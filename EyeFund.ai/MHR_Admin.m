function varargout = MHR_Admin(varargin)
% MHR_ADMIN MATLAB code for MHR_Admin.fig
%      MHR_ADMIN, by itself, creates a new MHR_ADMIN or raises the existing
%      singleton*.
%
%      H = MHR_ADMIN returns the handle to a new MHR_ADMIN or the handle to
%      the existing singleton*.
%
%      MHR_ADMIN('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in MHR_ADMIN.M with the given input arguments.
%
%      MHR_ADMIN('Property','Value',...) creates a new MHR_ADMIN or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before MHR_Admin_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to MHR_Admin_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help MHR_Admin

% Last Modified by GUIDE v2.5 24-Feb-2020 04:26:32

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @MHR_Admin_OpeningFcn, ...
                   'gui_OutputFcn',  @MHR_Admin_OutputFcn, ...
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


% --- Executes just before MHR_Admin is made visible.
function MHR_Admin_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to MHR_Admin (see VARARGIN)

% Choose default command line output for MHR_Admin
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes MHR_Admin wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = MHR_Admin_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in doctor.
function doctor_Callback(hObject, eventdata, handles)
% hObject    handle to doctor (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
run('MHR_Doc.m');


% --- Executes on button press in staff.
function staff_Callback(hObject, eventdata, handles)
% hObject    handle to staff (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
run('FG.m');

% --- Executes on button press in pushbutton3.
function pushbutton3_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
run('Analysis_data.m');

% --- Executes on button press in exit.
function exit_Callback(hObject, eventdata, handles)
% hObject    handle to exit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
close MHR_Admin
