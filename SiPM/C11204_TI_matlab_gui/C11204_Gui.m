function varargout = C11204_Gui(varargin)
% C11204_GUI MATLAB code for C11204_Gui.fig
%      C11204_GUI, by itself, creates a new C11204_GUI or raises the existing
%      singleton*.
%
%      H = C11204_GUI returns the handle to a new C11204_GUI or the handle to
%      the existing singleton*.
%
%      C11204_GUI('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in C11204_GUI.M with the given input arguments.
%
%      C11204_GUI('Property','Value',...) creates a new C11204_GUI or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before C11204_Gui_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to C11204_Gui_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help C11204_Gui

% Last Modified by GUIDE v2.5 22-Apr-2015 13:08:44

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @C11204_Gui_OpeningFcn, ...
                   'gui_OutputFcn',  @C11204_Gui_OutputFcn, ...
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


% --- Executes just before C11204_Gui is made visible.
function C11204_Gui_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to C11204_Gui (see VARARGIN)

% Choose default command line output for csn_gui_ti
handles.guifig = gcf;
% handles.hist = zeros(4096,1);
% handles.hist_corr = zeros(512,1); %para meter ceros en un array
% handles.hist_save = zeros(512,35);
% handles.hist_comp = zeros(512,1);
% handles.tmp_hists = zeros(5000,100);
handles.output = hObject;
handles.puerto_serie = serial('COM17'); %poner algo para poder elegir el num de puerto

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes C11204_Gui wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = C11204_Gui_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in pushbutton4.
function pushbutton4_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

 puerto = handles.puerto_serie;  %instancio el quick creado antes
 
 %configuro y abro el puerto serie
 set(puerto,'BaudRate',115200);
 set(puerto,'InputBufferSize',10000);
 fopen(puerto);
 
 if(puerto.BytesAvailable > 0) 
    fread(puerto, puerto.BytesAvailable);
 end
 
 guidata(handles.guifig, handles);
guidata(hObject, handles);


% --- Executes on selection change in popupmenu2.
function popupmenu2_Callback(hObject, eventdata, handles)
% hObject    handle to popupmenu2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
str = get(hObject, 'String');
num = get(hObject,'Value');
handles.puerto_serie = serial(str{num});
guidata(handles.guifig, handles);
guidata(hObject, handles);

% Hints: contents = cellstr(get(hObject,'String')) returns popupmenu2 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from popupmenu2


% --- Executes during object creation, after setting all properties.
function popupmenu2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to popupmenu2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on slider movement.
function sliderHV_Callback(hObject, eventdata, handles)
% hObject    handle to sliderHV (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider
val = get(hObject,'Value');
set(handles.editHV,'String',num2str(val));


% --- Executes during object creation, after setting all properties.
function sliderHV_CreateFcn(hObject, eventdata, handles)
% hObject    handle to sliderHV (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end


% --- Executes on slider movement.
function sliderTH_Callback(hObject, eventdata, handles)
% hObject    handle to sliderTH (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider
val = get(hObject,'Value');
set(handles.editTH,'String',num2str(val));


% --- Executes during object creation, after setting all properties.
function sliderTH_CreateFcn(hObject, eventdata, handles)
% hObject    handle to sliderTH (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end



function editHV_Callback(hObject, eventdata, handles)
% hObject    handle to editHV (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of editHV as text
%        str2double(get(hObject,'String')) returns contents of editHV as a double


% --- Executes during object creation, after setting all properties.
function editHV_CreateFcn(hObject, eventdata, handles)
% hObject    handle to editHV (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function editTH_Callback(hObject, eventdata, handles)
% hObject    handle to editTH (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of editTH as text
%        str2double(get(hObject,'String')) returns contents of editTH as a double


% --- Executes during object creation, after setting all properties.
function editTH_CreateFcn(hObject, eventdata, handles)
% hObject    handle to editTH (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in pushbutton9.
function pushbutton9_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton9 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
sPort = handles.puerto_serie;  %instancio el puerto

val = str2double(get(handles.editHV,'String'))*100;
uint16(val)
if (val < 9000 && strcmp(sPort.status,'open')) 
    strCad = strtok(num2str(val),'.');
    outStr = [char(254),char(254),'SHV'];
    %Ask for the data
    fwrite(sPort,outStr,'uchar');
    fwrite(sPort,uint16(val),'uint16');
    %read the answer
    datIn = fread(sPort,5,'char');
    char(datIn');
    set(handles.textHV,'String',strcat('HV :',num2str(str2num(strCad)/100)));
end


% --- Executes on button press in pushbutton10.
function pushbutton10_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton10 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
sPort = handles.puerto_serie;  %instancio el puerto
val = str2num(get(handles.editTH,'String'));
if (val < 1000 && strcmp(sPort.status,'open')) 
   % strCad = strtok(num2str(val),'.');
    outStr = [char(254),char(254),'STH'];
    %Ask for the data
    fwrite(sPort,outStr,'uchar');
    fwrite(sPort,uint16(val),'uint16');
    %read the answer
    datIn = fread(sPort,5,'char');
    char(datIn')
end    
