function varargout = MHR_Doc(varargin)
% MHR_DOC MATLAB code for MHR_Doc.fig
%      MHR_DOC, by itself, creates a new MHR_DOC or raises the existing
%      singleton*.
%
%      H = MHR_DOC returns the handle to a new MHR_DOC or the handle to
%      the existing singleton*.
%
%      MHR_DOC('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in MHR_DOC.M with the given input arguments.
%
%      MHR_DOC('Property','Value',...) creates a new MHR_DOC or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before MHR_Doc_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to MHR_Doc_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help MHR_Doc

% Last Modified by GUIDE v2.5 27-Apr-2024 15:47:21

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @MHR_Doc_OpeningFcn, ...
                   'gui_OutputFcn',  @MHR_Doc_OutputFcn, ...
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


% --- Executes just before MHR_Doc is made visible.
function MHR_Doc_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to MHR_Doc (see VARARGIN)

% Choose default command line output for MHR_Doc
handles.output = hObject;
set(handles.edit1,'String','**');
% Update handles structure
guidata(hObject, handles);

% UIWAIT makes MHR_Doc wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = MHR_Doc_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in old.
function old_Callback(hObject, eventdata, handles)
% hObject    handle to old (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global a;global tf1;
if(tf1==1)
[fname,path]=uigetfile('*.pdf','Browse old Pdf report');
if fname~=0
a=1;
else
    a=0;
    warndlg('Please Select the necessary Image File');
end
else
end


% --- Executes on button press in new.
function new_Callback(hObject, eventdata, handles)
% hObject    handle to new (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global b;global a;
if(a==1)
[fname1,path1]=uigetfile('*.pdf','Browse old Pdf report');
if fname1~=0
b=1;
else
    b=0;
    warndlg('Please Select the necessary Image File');
end
else
end
% --- Executes on button press in update.
function update_Callback(hObject, eventdata, handles)
% hObject    handle to update (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global b;global a;global tf1;
if(tf1==1 && a==1 && b==1)
append_pdfs update.pdf 1.pdf 2.pdf
else
      msgbox('Error');
end

function edit1_Callback(hObject, eventdata, handles)
% hObject    handle to edit1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit1 as text
%        str2double(get(hObject,'String')) returns contents of edit1 as a double


% --- Executes during object creation, after setting all properties.
function edit1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in pushbutton1.
function pushbutton1_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global tf1;
s1=get(handles.edit1,'String');
s2 = 'GK008';
tf1 = strcmp(s1,s2);
if(tf1==1)
msgbox('Welcome doctor to the UPDATE pannel');
else
    msgbox('You are not a valid doctor');
end


% --- Executes on button press in exit.
function exit_Callback(hObject, eventdata, handles)
% hObject    handle to exit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
close MHR_Doc

% --- Executes on button press in reset.
function reset_Callback(hObject, eventdata, handles)
% hObject    handle to reset (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
set(handles.edit1,'String','--');
