function [net,tr,out3,out4,out5,out6]=train(net,varargin)
 global acc;global sen;global spe;global eff;


% CHECK NEURAL NETWORK ARGUMENT
if nargin > 1
    [varargin{:}] = convertStringsToChars(varargin{:});
end

if ~isa(net,'network')
    error(message('nnet:train:FirstArgNotNN'));
end
net = struct(net);
if ~isfield(net,'version') || ~ischar(net.version) || ~strcmp(net.version,'7')
    net = nnupdate.net(net);
end
[~,zeroDelayLoop] = nn.layer_order(net);
if zeroDelayLoop
    error(message('nnet:NNet:ZeroDelayLoop'));
end
if isempty(net.trainFcn)
    error(message('nnet:NNet:TrainFcnUndefined'));
end
info = feval(net.trainFcn,'info');
if info.isSupervised && isempty(net.performFcn)
    error(message('nnet:NNet:SupTrainFcnNoPerformFcn'));
end
net.efficiency.flattenedTime = net.efficiency.flattenTime && (~strcmp(net.trainFcn,'trains'));

% HANDLE NNET 5.1 Backward Compatibility
if (nargin == 6) && (isstruct(varargin{5}) && isfield(varargin{5},'P'))
    net = network(net);
    [net,tr,out3,out4,out5,out6] = v51_train_arg6(net,varargin{:});
    return
elseif (nargin == 7) && ((isstruct(varargin{5}) && hasfield(varargin{5},'P')) || (isstruct(varargin{6}) && isfield(varargin{6},'P')))
    net = network(net);
    [net,tr,out3,out4,out5,out6] = v51_train_arg7(net,varargin{:});
    return
end

% PICK CALCULATION MODE

% Undocumented Testing API.
% This API may be altered or removed at any time.
% Specify calculation mode by name as last argument of train.
if ~isempty(varargin) && isstruct(varargin{end}) && isfield(varargin{end},'name')
    calcMode = nncalc.defaultMode(net,varargin{end});
    varargin(end) = [];
    [varargin,nameValuePairs] = nnet.arguments.extractNameValuePairs(varargin);
    calcMode.options = nnet.options.calc.defaults;
    [calcMode.options,err] = nnet.options.override(calcMode.options,nameValuePairs);
    if ~isempty(err)
        error( 'nnet:train:TrainArgumentError', '%s', err );
    end
    calcMode.options.showResources = 'yes';
    modeSpecified = true;

    % Documented API
    % Recommended API for customers and most testing.
    % Use optional parameter/value pairs to pick calculation mode.
else
    [varargin,nameValuePairs] = nnet.arguments.extractNameValuePairs(varargin);
    [calcMode,err,modeSpecified] = nncalc.options2Mode(net,nameValuePairs);
    if ~isempty(err)
        error( 'nnet:train:TrainArgumentError', '%s', err );
    end
end
err = calcMode.netCheck(net,calcMode.hints,false,false);
if ~isempty(err)
    error( 'nnet:train:TrainArgumentError', '%s', err );
end

% CHECK DATA ARGUMENTS

% Check that data arguments are consistently Composite or not
nargs = numel(varargin);
if nargs >= 1
    isComposite = isa(varargin{1},'Composite');
else
    isComposite = false;
end
for i=2:nargs
    if isComposite ~= isa(varargin{i},'Composite')
        error(message('nnet:train:AllCompositeOrNot'));
    end
end

% Check that data arguments are consistently gpuArray or not
if nargs >= 1
    isGPUArray = isa(varargin{1},'gpuArray');
else
    isGPUArray = false;
end
for i=2:nargs
    vi = varargin{i};
    if ~isempty(vi) && (isGPUArray ~= isa(vi,'gpuArray'))
        error(message('nnet:train:AllGPUArrayOrNot'));
    end
end

% Fill in missing data consistent with type
if isComposite
    emptyCell = Composite;
    for i=1:numel(emptyCell)
        emptyCell{i} = {};
    end
else
    emptyCell = {};
end
X = vararginOrDefault(varargin,1,emptyCell);
T = vararginOrDefault(varargin,2,emptyCell);
Xi = vararginOrDefault(varargin,3,emptyCell);
Ai = vararginOrDefault(varargin,4,emptyCell);
EW = vararginOrDefault(varargin,5,emptyCell);
if isComposite
    X = fillUndefinedCompositeWithEmptyCell(X);
    T = fillUndefinedCompositeWithEmptyCell(T);
    Xi = fillUndefinedCompositeWithEmptyCell(Xi);
    Ai = fillUndefinedCompositeWithEmptyCell(Ai);
    EW = fillUndefinedCompositeWithEmptyCell(EW);
end
calcModesSupported = feval(net.trainFcn,'supportsCalcModes');
if ~calcModesSupported
    if isComposite
        error(message('nnet:parallel:TrainingFcnDoesNotSupportComposite'));
    elseif isGPUArray
        error(message('nnet:parallel:TrainingFcnDoesNotSupportGPUArray'));
    elseif modeSpecified
        error(message('nnet:parallel:TrainingOnlySupportsDefaultCalculation'));
    end
end

% Setup data and network for training, including:
% - Configuration and initialization if necessary
% - Generate data division masks
enableConfigure = ~isComposite;
[net,data,tr,err] = nntraining.setup(net,net.trainFcn,X,Xi,Ai,T,EW,enableConfigure,isComposite);
if strncmp( err, 'nnet:', 5 )
    error(message(err))
end
if ~isempty(err)
    nnerr.throw('Args',err),
end
if isempty(tr)
    return; % No data, no need to train
end

if(strcmp(net.performFcn, 'msesparse'))
    msesparse.checkThatNetworkIsCompatibleWithMSESparse(net, calcMode, data);
end

% TRAIN
% Training with functions that do not support calculation modes
if ~calcModesSupported
    hints = nn7.netHints(net);
    data.Pc = nn7.pc(net,data.X,data.Xi,data.Q,data.TS,hints);
    data.Pd = nn7.pd(net,data.Pc,data.Q,data.TS,hints);
    hints = nn7.dataHints(net,data,hints);
    [net,tr] = feval(net.trainFcn,'apply',net,tr,data,calcMode.options,hints,net.trainParam);
    
else
    % Prepare calculation mode
    [calcLib,calcNet,net,resourceText] = nncalc.setup(calcMode,net,data);
    tr.trainFcn = net.trainFcn;
    tr.trainParam = net.trainParam;
    if ~isempty(resourceText)
        disp(' ')
        disp('Computing Resources:')
        nntext.disp(resourceText)
        disp(' ')
    end
    trainFcn = str2func(net.trainFcn);
    
    % Train Parallel with calculation mode support
    [net,tr] = feval(trainFcn,'apply',net,data,calcLib,calcNet,tr);
end

net = network(net);
 set(handles.edit26,'String',sen);
set(handles.edit27,'String',spe);
set(handles.edit28,'String',acc);
set(handles.edit29,'String',eff);
% NNET 5.1 Compatibility
if nargout > 2
    [out3,out5,out6] = sim(net,X,Xi,Ai,T);
    out4 = gsubtract(T,out3);
end
end

function v = vararginOrDefault(argin,i,replacement)
if (i <= numel(argin))
    v = argin{i};
else
    v = replacement;
end
end

function x = fillUndefinedCompositeWithEmptyCell(x)
for i=1:numel(x)
    if ~exist(x,i)
        x{i} = {};
    end
end
end