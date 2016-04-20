function varargout = gui_C12137(varargin)
% GUI_C12137 MATLAB code for gui_C12137.fig
%      GUI_C12137, by itself, creates a new GUI_C12137 or raises the existing
%      singleton*.
%
%      H = GUI_C12137 returns the handle to a new GUI_C12137 or the handle to
%      the existing singleton*.
%
%      GUI_C12137('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in GUI_C12137.M with the given input arguments.
%
%      GUI_C12137('Property','Value',...) creates a new GUI_C12137 or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before gui_C12137_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to gui_C12137_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help gui_C12137

% Last Modified by GUIDE v2.5 30-Aug-2012 11:25:48

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @gui_C12137_OpeningFcn, ...
                   'gui_OutputFcn',  @gui_C12137_OutputFcn, ...
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


% --- Executes just before gui_C12137 is made visible.
function gui_C12137_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to gui_C12137 (see VARARGIN)

% Choose default command line output for gui_C12137
handles.output = hObject;

handles.guifig = gcf;
handles.aux_graf = 0; %TODO quitar esta variable al poner un hilo para las graficas
handles.aux_temp = 0; % lo uso para no tener que hacer otro hilo para el histograma temporal
handles.t_mins = 1;
handles.salvar = false;
handles.detector = C12137(); %{@TmrFcn,handles.guifig},'BusyMode','Queue',...
handles.timer_lectura = timer('TimerFcn',{@lectPeriodica,handles.guifig}, 'BusyMode','Queue',...
     'ExecutionMode','FixedRate','Period', 1);
guidata(handles.guifig,handles);
% Update handles structure
guidata(hObject, handles);

% UIWAIT makes gui_C12137 wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = gui_C12137_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in bConectar.
function bConectar_Callback(hObject, eventdata, handles)
% hObject    handle to bConectar (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
detector = handles.detector; %para poder usar el detector
timer_lectura = handles.timer_lectura; %asi puedo arrancar el timer
  
detector.openDevice();

periodo = 0.1; %lecturas cada 100 milisegundos
set(timer_lectura,'Period',periodo);
%arranco el hilo de la lectura periodica
start(timer_lectura);
%actualizo los valores de las handles....no muy seguro de que sea necesario
guidata(handles.guifig, handles);
guidata(hObject, handles);


function edit_Callback(hObject, eventdata, handles)
% hObject    handle to edit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit as text
%        str2double(get(hObject,'String')) returns contents of edit as a double


% --- Executes during object creation, after setting all properties.
function edit_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in bModificar.
function bModificar_Callback(hObject, eventdata, handles)
% hObject    handle to bModificar (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
 handles.t_mins = str2double(get(handles.edit,'String'));
%sigo sin saber si lo siguiente es necesario
guidata(handles.guifig, handles);
guidata(hObject, handles);


% --- Executes on button press in checkAlmacenar.
function checkAlmacenar_Callback(hObject, eventdata, handles)
% hObject    handle to checkAlmacenar (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
if get(hObject,'Value') 
    handles.salvar = true;
else 
    handles.savlar = false;
end
%sigo sin saber si lo siguiente es necesario
guidata(handles.guifig, handles);
guidata(hObject, handles);
    

% Hint: get(hObject,'Value') returns toggle state of checkAlmacenar


% --- Executes on button press in bGuardar.
function bGuardar_Callback(hObject, eventdata, handles)
% hObject    handle to bGuardar (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
detector = handles.detector;
save datosC12137 detector % salvo los datos...mejorable..


function lectPeriodica(src,event,handles) %Timer function
handles = guidata(handles);
detector = handles.detector;  %instancio el detector creado antes
% podria hacer una llamada del tipo....[error,hist, temp]...pero...paso

%lectura propiamente dicha
error = detector.readData();    

 %cutre solucion, si hay lecturas erroneas, descarto la lectura
 if (error ~= 0 ) 
     disp(' Error en la lectura');
 end
 
handles.aux_graf = handles.aux_graf +1;
%cada segundo es que actualizo las graficas, para que no sature el marla
if  handles.aux_graf >= 10  %10*0.1, se actualiza cada segundo
    
    handles.aux_temp = handles.aux_temp +1;
    %compruebo si se pide la grafica del total o la gráfica temporal
    total = get(handles.bTotal,'Value');
    if total
        plot(handles.grafHist,1:4096, detector.histogram);
    else
        plot(handles.grafHist,1:4096, detector.tmp_hist);
    end
    
    %ahora compruebo si ha terminado la integracion del histograma temporal
    if handles.aux_temp >= handles.t_mins*60 %el tiempo esta en minuto
        if handles.salvar 
            % salvo los datos...mejorable..
            tmp_hist = detector.tmp_hist;
            save hist_tmp.mat tmp_hist 
        end
        detector.clearTempHist(); % pongo a 0 el historial temporal
        handles.aux_temp = 0; 
    end
            
        
    handles.aux_graf = 0;
    %guardo el histograma corregido (rebineado a 512)
    str_temp = strcat('Temperatura',num2str(detector.temperature));
    set(handles.lTemp,'String',str_temp);
    
end
 
guidata(handles.guifig, handles);


% --- Executes on button press in bBorrar.
function bBorrar_Callback(hObject, eventdata, handles)
% hObject    handle to bBorrar (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
detector = handles.detector; 
timer_lectura = handles.timer_lectura;
%detengo la lectura periodica
stop(timer_lectura);
%pongo a 0 todos los contadores auxiliares
handles.aux_graf = 0; 
handles.aux_temp = 0;
% pongo a 0 los histogramas almacenados
detector.clearTempHist();
detector.clearHist();
% ahora vuelvo a arrancar el contador
start(timer_lectura);
%sigo sin saber si lo siguiente es necesario
guidata(handles.guifig, handles);
guidata(hObject, handles);
