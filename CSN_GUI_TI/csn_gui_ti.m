function varargout = csn_gui_ti(varargin)
% CSN_GUI_TI M-file for csn_gui_ti.fig
%      CSN_GUI_TI, by itself, creates a new CSN_GUI_TI or raises the existing
%      singleton*.
%
%      H = CSN_GUI_TI returns the handle to a new CSN_GUI_TI or the handle to
%      the existing singleton*.
%
%      CSN_GUI_TI('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in CSN_GUI_TI.M with the given input arguments.
%
%      CSN_GUI_TI('Property','Value',...) creates a new CSN_GUI_TI or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before csn_gui_ti_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to csn_gui_ti_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help csn_gui_ti

% Last Modified by GUIDE v2.5 09-Dec-2014 18:58:14

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @csn_gui_ti_OpeningFcn, ...
                   'gui_OutputFcn',  @csn_gui_ti_OutputFcn, ...
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

% --- Executes just before csn_gui_ti is made visible.
function csn_gui_ti_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to csn_gui_ti (see VARARGIN)



% Choose default command line output for csn_gui_ti
handles.guifig = gcf;
handles.hist = zeros(4096,1);
handles.hist_corr = zeros(512,1); %para meter ceros en un array
handles.hist_save = zeros(512,35);
handles.hist_comp = zeros(512,1);
handles.tmp_hists = zeros(5000,100);
handles.output = hObject;
handles.puerto_serie = serial('COM1'); %poner algo para poder elegir el num de puerto
handles.timer = timer('TimerFcn',{@lectPeriodica,handles.guifig}, 'BusyMode','Queue',...
     'ExecutionMode','FixedRate','Period', 5.0);
handles.timerSave = timer('TimerFcn',{@savePer,handles.guifig}, 'BusyMode','Queue',...
     'ExecutionMode','FixedRate','Period', 60.0);
 
  
guidata(handles.guifig,handles);


% Update handles structure
guidata(hObject, handles);

% This sets up the initial plot - only do when we are invisible
% so window can get raised using csn_gui_ti.
if strcmp(get(hObject,'Visible'),'off')
    plot(rand(5));
end

% UIWAIT makes csn_gui_ti wait for user response (see UIRESUME)
% uiwait(handles.figure1);

% --- Outputs from this function are returned to the command line.
function varargout = csn_gui_ti_OutputFcn(hObject, eventdata, handles)
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;

% --- Executes on button press in pushbutton1.
function pushbutton1_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

 axes(handles.axes1);
 cla;
 
 puerto = handles.puerto_serie;  %instancio el quick creado antes
 timer = handles.timer; %timer para la lectura periodica
 timerSave = handles.timerSave;
 
 %configuro y abro el puerto serie
 set(puerto,'BaudRate',115200);
 set(puerto,'InputBufferSize',10000);
 fopen(puerto);
 
 if(puerto.BytesAvailable > 0) 
    fread(puerto, puerto.BytesAvailable);
end
 
 
 periodo = str2double(get(handles.edit2, 'String'));
 set(timer,'Period',periodo);
 %disp(periodo);

  set(timerSave,'Period',60.0);
 start(timer);
 start(timerSave);

 guidata(handles.guifig, handles);
guidata(hObject, handles);



% --------------------------------------------------------------------
function FileMenu_Callback(hObject, eventdata, handles)
% hObject    handle to FileMenu (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --------------------------------------------------------------------
function OpenMenuItem_Callback(hObject, eventdata, handles)
% hObject    handle to OpenMenuItem (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
file = uigetfile('*.fig');
if ~isequal(file, 0)
    open(file);
end

% --------------------------------------------------------------------
function PrintMenuItem_Callback(hObject, eventdata, handles)
% hObject    handle to PrintMenuItem (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
printdlg(handles.figure1)

% --------------------------------------------------------------------
function CloseMenuItem_Callback(hObject, eventdata, handles)
% hObject    handle to CloseMenuItem (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
selection = questdlg(['Close ' get(handles.figure1,'Name') '?'],...
                     ['Close ' get(handles.figure1,'Name') '...'],...
                     'Yes','No','Yes');
if strcmp(selection,'No')
    return;
end

hist = handles.hist;
save histrograma.mat hist

delete(handles.figure1)



% --- If Enable == 'on', executes on mouse press in 5 pixel border.
% --- Otherwise, executes on mouse press in 5 pixel border or over pushbutton1.
function pushbutton1_ButtonDownFcn(hObject, eventdata, handles)
% hObject    handle to pushbutton1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)




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



function edit2_Callback(hObject, eventdata, handles)
% hObject    handle to edit2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit2 as text
%        str2double(get(hObject,'String')) returns contents of edit2 as a double


% --- Executes during object creation, after setting all properties.
function edit2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function lectPeriodica(src,event,handles) %Timer function
handles = guidata(handles);
%cla;
sPort = handles.puerto_serie;  %instancio el puerto
%hist = handles.hist; %esto no vale porque hist es temporal
%sin visibilidad para fuera
%tic
nread = 0;

outStr = [char(254),char(254),'DAT'];

%Ask for the data
fwrite(sPort,outStr,'uchar');

%read the answer
tmp_aux = zeros(1,4096);
while sPort.BytesAvailable <3
        pause(0.1);
        nread = nread+1; 
        if nread > 1000 
            disp('lecturas infinitas');
        end
 end
datIn = fread(sPort,5,'char');
if (datIn(3:5)'=='dat')
    tmp_aux = double( fread(sPort,4096,'uint16'));
    handles.hist = handles.hist+tmp_aux;
    handles.hist_corr = handles.hist_corr + blkproc(tmp_aux,[8 1],'mean2');

else
    basura = fread(sPort,sPort.BytesAvailable,'char');
    disp('error');
end
 

 n_events = sum(tmp_aux)/(str2num(get(handles.edit2,'String'))); %algo mejor seria
 %sum(temp)/(str2num(get(handles.edit2,'String'))
 strCountRate = strcat('Cps :',num2str(round(n_events)));
 set(handles.textCountRate,'String',strCountRate);

 
%lo pongo en escala logaritmica
%set(handles.axes3,'XScale','log');
plot(handles.axes1,1:512, handles.hist_corr(1:512));
xlim(handles.axes1,[1 512]);
%set(handles.axes1,'YScale','log');
%plot(handles.axes1,temp,'*');
%set(handles.edit1,'string',num2str(dataConv(1)));
guidata(handles.guifig, handles);

%used to save the data every minute
function savePer(src,event,handles) %Timer function
handles = guidata(handles);

histog_corr = handles.hist_corr;
histog_tot = handles.hist;

handles.hist = zeros(4096,1);
handles.hist_corr = zeros(512,1); %para meter ceros en un array
clk = clock;
fName = strcat('Na22_',date,'_',num2str(clk(4),'%02.0f'),'_',num2str(clk(5),'%02.0f'),'_meas.mat');
save(fName,'histog_tot', 'histog_corr');

guidata(handles.guifig, handles);




% --- Executes on button press in pushbutton4.
function pushbutton4_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
 timer = handles.timer; %timer para la lectura periodica
 timerSave = handles.timerSave;

%cierro el puerto y detengo el contador
 puerto = handles.puerto_serie; 
 fclose(puerto);

 stop(timer);
 stop(timerSave);
 guidata(handles.guifig, handles);
guidata(hObject, handles);


% --- Executes on button press in pushbutton5.
function pushbutton5_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

handles.hist = zeros(4096,1);
handles.hist_corr = zeros(512,1); %para meter ceros en un array

guidata(handles.guifig, handles);
guidata(hObject, handles);


% --- Executes on button press in pushbutton6.
function pushbutton6_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% load red_prueba_13_6;
% val1 = sim(net,handles.hist_comp)
% [valor,clase] = max(val1);
% switch clase
%     case 1
%         str_tmp ='Bario 133';
%     case 2 
%         str_tmp ='Cobalto 60';
%     case 3
%         str_tmp ='Cesio 137';
%     case 4
%         str_tmp ='Manganeso 54';
%     case 5 
%         str_tmp ='Sodio 22';
% end
% disp(str_tmp);
str_tmp = clasifica_cutre(handles.hist_comp);
set(handles.textIdent,'String',str_tmp);
guidata(handles.guifig, handles);
guidata(hObject, handles);


% --- Executes on button press in pushbutton7.
function pushbutton7_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton7 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
histog_corr = handles.hist_corr;
histog_tot = handles.hist;
clk = clock;
fName = strcat(date,'_',num2str(clk(4),'%02.0f'),'_',num2str(clk(5),'%02.0f'),'_meas.mat');
save(fName,'histog_tot', 'histog_corr');

guidata(handles.guifig, handles);
guidata(hObject, handles);


% --- Executes on selection change in popupmenu2.
function popupmenu2_Callback(hObject, eventdata, handles)
% hObject    handle to popupmenu2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns popupmenu2 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from popupmenu2
% Update the serial port to use
str = get(hObject, 'String');
num = get(hObject,'Value');
handles.puerto_serie = serial(str{num});
guidata(handles.guifig, handles);
guidata(hObject, handles);


% --- Executes during object creation, after setting all properties.
function popupmenu2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to popupmenu2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
    %populate the popup menu
    tmp = instrhwinfo('serial');
    set(hObject,'String',tmp.AvailableSerialPorts);
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
function slider3_Callback(hObject, eventdata, handles)
% hObject    handle to slider3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider


% --- Executes during object creation, after setting all properties.
function slider3_CreateFcn(hObject, eventdata, handles)
% hObject    handle to slider3 (see GCBO)
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
%TODO esto podria leerlo de la fuente....



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
