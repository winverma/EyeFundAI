function varargout = Analysis_data(varargin)
% ANALYSIS_DATA MATLAB code for Analysis_data.fig
%      ANALYSIS_DATA, by itself, creates a new ANALYSIS_DATA or raises the existing
%      singleton*.
%
%      H = ANALYSIS_DATA returns the handle to a new ANALYSIS_DATA or the handle to
%      the existing singleton*.
%
%      ANALYSIS_DATA('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in ANALYSIS_DATA.M with the given input arguments.
%
%      ANALYSIS_DATA('Property','Value',...) creates a new ANALYSIS_DATA or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before Analysis_data_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to Analysis_data_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help Analysis_data

% Last Modified by GUIDE v2.5 08-Mar-2020 05:36:43

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @Analysis_data_OpeningFcn, ...
                   'gui_OutputFcn',  @Analysis_data_OutputFcn, ...
                   'gui_LayoutFcn',  [] , ...
                   'gui_Callback',   []);
if nargin && ischar(varargin{1})
    gui_State.gui_Callback = str2func(varargin{1});
end

if nargout
    [varargout{1:nargout}] = gui_mainfcn(gui_State, varargin{:});
else
    gui_mainfcn(gui_State, varargin{:});
end
% End initialization code - DO NOT EDIT


% --- Executes just before Analysis_data is made visible.
function Analysis_data_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to Analysis_data (see VARARGIN)

% Choose default command line output for Analysis_data
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes Analysis_data wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = Analysis_data_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
axes(handles.axes1);axis off
% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in Select_data.
function Select_data_Callback(hObject, eventdata, handles)
% hObject    handle to Select_data (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global GK;
[fname1,path1]=uigetfile('*.pdf','Browse old Pdf report');
if fname1~=0
    GK=1;
else
     warndlg('Please Select the necessary Image File');
end
run('Sequence_code.p');
if GK==1
axes(handles.axes1);
x = 1:5;
run('dadts.m');
load databasess.mat
data = [a,b,c,d,e];
bar(x,data);
legend('1.BP, 2.Diabetics, 3.Brain Tumor, 4.Ulcer, 5.Stone issues')
end 