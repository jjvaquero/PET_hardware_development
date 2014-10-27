function varargout = artemis_gui_v1(varargin)
% artemis_gui_V1 M-file for artemis_gui_v1.fig
%      artemis_gui_V1, by itself, creates a new artemis_gui_V1 or raises the existing
%      singleton*.
%
%      H = artemis_gui_V1 returns the handle to a new artemis_gui_V1 or the handle to
%      the existing singleton*.
%
%      artemis_gui_V1('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in artemis_gui_V1.M with the given input arguments.
%
%      artemis_gui_V1('Property','Value',...) creates a new artemis_gui_V1 or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before artemis_gui_v1_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to artemis_gui_v1_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help artemis_gui_v1

% Last Modified by GUIDE v2.5 21-Apr-2014 17:34:39




% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @artemis_gui_v1_OpeningFcn, ...
                   'gui_OutputFcn',  @artemis_gui_v1_OutputFcn, ...
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

% --- Executes just before artemis_gui_v1'¡¡¡ is made visible.
function artemis_gui_v1_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to artemis_gui_v1 (see VARARGIN)

%local variables
histSize = 4096;
imgSize = 512;

% Choose default command line output for artemis_gui_v1
handles.guifig = gcf;
%one histogram per channel, plus energy histogram
%acq_data structure containing info on the current acquisition
handles.acqData.imgSize = imgSize;
handles.acqData.histSize = histSize;
handles.acqData.acqTime = '';
handles.acqData.source = '';
handles.acqData.vSupply = '';
handles.acqData.crystal = '';
handles.histo1 = zeros(1,histSize);
handles.histo2 = zeros(1,histSize);
handles.histo3 = zeros(1,histSize);
handles.histo4 = zeros(1,histSize);
handles.energyHist = zeros(1,histSize);
handles.energyHist2 = zeros(1,histSize);
handles.lastNEvents = 0;
%ahora otra variable para almacenar la imagen
handles.imagen = zeros(imgSize, imgSize); %/2);
handles.img_eng = zeros(imgSize, imgSize);
% needs to be smaller
% just a part of the image
handles.img_histo = uint16(zeros(100,100,histSize/8)); %zeros(100,100,histSize/8));
%barbarie maxima
%handles.img_histEngs = uint16(zeros(10,10,512,512));
handles.imgHistPixel = zeros(imgSize,imgSize);



%handles.aux_val = 0; 
handles.output = hObject;
handles.quick = Quick_USB('mi_quick'); %{@TmrFcn,handles.guifig},'BusyMode','Queue',...
 %   'ExecutionMode','FixedRate','Period',2);
%timer used to read data from the usb
handles.readTimer = timer('TimerFcn',{@lectPeriodica,hObject}, 'BusyMode','Queue',...
     'ExecutionMode','FixedRate','Period', 1);
% handles.readTimer = timer('TimerFcn',{@lectPeriodica,handles.guifig}, 'BusyMode','Queue',...
%     'ExecutionMode','FixedRate','Period', 1);
%timer used to update the onscreen info
handles.plotTimer = timer('TimerFcn',{@plotUpdate,hObject}, 'BusyMode','Queue',...
     'ExecutionMode','FixedRate','Period', 1);
 
%guidata(handles.guifig,handles);

% Update handles structure
guidata(hObject, handles);



% UIWAIT makes artemis_gui_v1 wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = artemis_gui_v1_OutputFcn(hObject, eventdata, handles)
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;

% --- Executes on button press in acq_button.
function acq_button_Callback(hObject, eventdata, handles)
% hObject    handle to acq_button (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

 %axes(handles.axes1);
 %cla;
 %period used by the timers
 readTime = 0.25;
 plotTime = 0.5;
 fpgaConfFile ='QUSBEVB_REVA_EP2C20_Template.rbf'; %'QUSBEVB_REVA.rbf'; 'offsets.rbf'

quick = handles.quick;  %create a local instance of the quickUSB
readTimer = handles.readTimer; %same but with the readTimer
plotTimer = handles.plotTimer;
%inicializo el quick y demas

%lo configuro
QUSB_init(quick);
%configuro la FPGA
QUSB_FpgaInit(quick);
%programo la FPGA
%insert a delay required by the fpga
pause(1);
QUSB_FpgaProgram(quick,fpgaConfFile); 
pause(1);

%after the FPGA have been configured, i can start the timers
 set(readTimer,'Period',readTime);
 set(plotTimer,'Period',plotTime);
 
 start(readTimer);
 start(plotTimer);

% guidata(handles.guifig, handles);
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

hist1 = handles.histo1;
hist2 = handles.histo2;
hist3 = handles.histo3; 
hist4 = handles.histo4;
imagen = handles.imagen;
energyHist = handles.energyHist;
img_histo = handles.img_histo;
img_Eng = handles.img_eng;
energyHist2 = handles.energyHist2;
%img_histEngs = handles.img_histEngs; 
img_histEngs = handles.imgHistPixel;
strName = 'data';
ctmp = clock; 
for i = 1 : length(ctmp) - 1
    strName = strcat(strName,'_',num2str(ctmp(i)));
end
strName = strcat(strName,'.mat');

save(strName,'hist1','hist2','hist3','hist4','imagen','energyHist','energyHist2','img_histo','img_Eng','img_histEngs'); 

delete(handles.figure1)



% --- If Enable == 'on', executes on mouse press in 5 pixel border.
% --- Otherwise, executes on mouse press in 5 pixel border or over acq_button.
function acq_button_ButtonDownFcn(hObject, eventdata, handles)
% hObject    handle to acq_button (see GCBO)
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

function lectPeriodica(src,event,hObject) %Timer function
handles = guidata(hObject); %handles
%cla;
quick = handles.quick;  %instancio el quick creado antes
%hist = handles.hist; %esto no vale porque hist es temporal
%sin visibilidad para fuera
  %tic
 [data,nRead] = QUSB_ReadFpgaData(quick,20000); %paso a leer 8000 valores
 %toc   ...me da tiempos de 0.001 es decir vuelve enseguida
 %los datos son leidos a un array de caracteres
 %por ello realizo ahora la conversion necesaria
 dataConv = typecast(data,'uint16');
 set(handles.text1,'String',num2str(nRead));
 

 for i = 1: 10000 - 1 %10239
    %if (mean([data(i-1),data(i),data(i+1)])-data(i) == 0) 
    %no deberian haber nunca dos valores seguids por lo que...
    if (dataConv(i) == dataConv(i+1))
        dataConv(i) = 0;
    end
 end

%ahora analizo los datos y los meto en el canal correspondiente
canal1 = zeros(1,5000); histo1 = zeros(1,4096);
canal2 = zeros(1,5000); histo2 = zeros(1,4096);
canal3 = zeros(1,5000); histo3 = zeros(1,4096);
canal4 = zeros(1,5000); histo4 = zeros(1,4096);
canal5 = zeros(1,5000); histo5 = zeros(1,4096);
histoEng = zeros(1,4096);
imgHisto = uint16(zeros(100,100,512));
pixImg = zeros(512,512);
%img_histEngsl = uint16(zeros(10,10,512,512));


%algoritmo para garantizar que los eventos van uno detras de otro
indice = 1; %indice comun para todos los canales
%cad = '';
for i = 1 : 9995 %2500
    if (dataConv(i) ~=0 && dataConv(i) <8192 && dataConv(i)>= 4096 ) %compruebo que tengo un elemento del primer canal
        canal1(indice) = dataConv(i) - 4096; 
        %cad = strcat(cad,num2str(canal1(indice)), '  aaa ');
        %i = i+1; %esto a lo mejor no le gusta mucho a marla...
        %anido los if para comprobar los siguientes canales
         if (dataConv(i+1) <16384 && dataConv(i+1)>= 8192 ) %canal 2
             canal2(indice) = dataConv(i+1) - 8192;  
             %cad = strcat(cad,num2str(canal2(indice)), '  aaa ');
              if ( dataConv(i+2) <32768 && dataConv(i+2)>= 16384 ) %canal3
                canal3(indice) = dataConv(i+2) - 16384;
                %cad = strcat(cad,num2str(canal3(indice)), '  aaa ');
                 if (dataConv(i+3) < 49152 && dataConv(i+3)>= 32768 ) %cana4
                     canal4(indice) = dataConv(i+3) - 32768; 
                     if ( dataConv(i+4)>= 49152 )
                         canal5(indice) = dataConv(i+4) - 49152; 
                    % cad = strcat(cad,num2str(canal4(indice)), '  aaa ');
                     %ahora ya tengo claro que este dato es valido por lo
                     %tanto incremento el indice
                     %no incremento i porque lo hara el ejecutar el bucle
                     %ahora tambien modifico los histogramas
                     if( canal5(indice)> 0 && canal5(indice) < 4096)
                         histo5(canal5(indice)+1) = histo5(canal5(indice)+ 1) + 1; %el mas uno del hist...es porque matlab empieza en 1 y no en 0
                     end
                     if( canal4(indice)> 0 && canal4(indice) < 4096)
                         histo4(canal4(indice)+1) = histo4(canal4(indice)+ 1) + 1; %el mas uno del hist...es porque matlab empieza en 1 y no en 0
                     end
                     if( canal3(indice)> 0 && canal3(indice) < 4096)
                         histo3(canal3(indice)+1) = histo3(canal3(indice)+ 1) + 1;
                     end
                     if( canal2(indice)> 0 && canal2(indice) < 4096)
                         histo2(canal2(indice)+1) = histo2(canal2(indice)+ 1) + 1;
                     end
                     if( canal1(indice)> 0 && canal1(indice) < 4096)
                         histo1(canal1(indice)+1) = histo1(canal1(indice)+ 1) + 1;
                     end
                     indice = indice + 1; 
                     %disp(indice);
                     end
                     
                 end
              end
         end
    end
   % disp(cad);
end


%save dataconv.mat dataConv data  %histo1 histo2 histo3 histo4

%ahora genero la imagen, para eso leo los datos de cada canal
%para eso asigno los valores
img = zeros (512,512); %256);
imgEng = zeros(512,512);
n_error= 0;
  %menor = min([ind1,ind2,ind3,ind4]);
  %cad = strcat(num2str(ind1),'Xb = ',num2str(ind2),'Ya =',num2str(ind3),'Yb = ',num2str(ind4));
  %disp( cad); 
 % canal4 = canal4 + 150; %compenso por el offset del canal3
 % canal1 = canal1 + 100; %compenso por el offset del canal2
for i = 1: indice-1  %menor

    XA = canal3(i); XB = canal4(i);  %los +20 es para corregir el offset
    YA = canal1(i); YB = canal2(i);
   % cad = strcat(num2str(XA),'Xb = ',num2str(XB),'Ya =',num2str(YA),'Yb = ',num2str(YB));
   % disp( cad);
    
    energia = round((XA + XB +YA + YB)/4); %hago un cutre escalado...
    if( energia> 0 && energia < 4096)
          histoEng(energia+ 1) = histoEng(energia+ 1) + 1;
    end
    
    %X = round((XA-XB)/energia*512 + 256);
    %Y = round((YA-YB)/energia*512 + 256);
    X = round((((XA-XB)/((XA+XB)))+1)*256); %128 %round(((2*(XA-XB)/((YA+YB+XA+XB)))+1)*256);
    Y = round((((YA-YB)/((YA+YB)))+1)*256); %round(((2*(YA-YB)/((YA+YB+XA+XB)))+1)*256);

    if (X>0 && X<513) && (Y>0 && Y<513) %X<257
        
        img(Y,X) = img(Y,X) + 1; % energia;  
        energiaHist =round(energia/8);
        energiaHist1 =round(energia/4);
        energiaGSO = round(canal5(i)/4);
         if( energiaHist1> 0 && energiaHist1 < 513 && energiaGSO > 0 && energiaGSO<513)
             imgEng(energiaHist1,energiaGSO) = imgEng(energiaHist1,energiaGSO) +1 ;
          %   if (ratio > 1500) %asumo que es GSO
          %     imgEng(energiaHist,energiaGSO) = imgEng(energiaHist,energiaGSO) + 80 ;    
           %  end
         end
        
       if( energiaHist> 0 && energiaHist < 513 && X > 85 && X<186 && Y>125 && Y<226)
         % handles.img_histo(X,Y,energiaHist+1) = handles.img_histo(X,Y,energiaHist+1)+1;
         imgHisto(Y-125,X-85,energiaHist+1) = imgHisto(Y-125,X-85,energiaHist+1)+1;
          if ( (X-85) > 71 && (X-85)<82 && (Y-125)>60 && (Y-125)<71 && energiaGSO > 0 && energiaGSO<513 ) 
         % if ((X-85) > 60 && (X-85)<71 && (Y-125)>71 && (Y-125)<82 && energiaGSO > 0 && energiaGSO<513 )
              %img_histEngsl(X-85-62,Y-125-10,energiaHist+1,energiaGSO+1) = img_histEngsl(X-85-62,Y-125-10,energiaHist+1,energiaGSO+1) + 1;
              %aqui meto el histograma de un pixel...
              pixImg(energiaHist,energiaGSO) = pixImg(energiaHist,energiaGSO)+1;            
          end
       %   imgHisto(Y,X,energiaHist+1) = imgHisto(Y,X,energiaHist+1)+1;
       end
       % if (X>250 && X<262) && (Y>250 && Y<262)
       %     img(X,Y) = 10;
       % end
        %disp(X);
        %disp(energia);
    else
        n_error = n_error+1;
     %  disp('X=');disp(strcat(num2str(X),'_XA_',num2str(XA),'_XB_',num2str(XB)));%disp(X); 
     %  disp('Y=');disp(strcat(num2str(Y),'_YA_',num2str(YA),'_YB_',num2str(YB)));
    end
end
%imshow(mat2gray(img));
%imagesc(img);
 

%hasta aqui toda la parte de lectura e interpretacion de datos
%ahora meto los datos en los datos que almaceno en mis handles
handles.histo1 = handles.histo1 + histo1; 
handles.histo2 = handles.histo2 + histo2; 
handles.histo3 = handles.histo3 + histo3; 
handles.histo4 = handles.histo4 + histo4; 
handles.imagen = handles.imagen+img;
handles.img_eng = handles.img_eng +imgEng;
handles.img_histo = handles.img_histo + imgHisto;
handles.energyHist = handles.energyHist + histoEng;
handles.energyHist2 = handles.energyHist2 + histo5;
%handles.img_histEngs = handles.img_histEngs + img_histEngsl;
handles.imgHistPixel = handles.imgHistPixel + pixImg;
%0.25 readTime
handles.lastNEvents = indice/0.25;



%imagesc(handles.axes1,handles.imagen);

%plot(handles.axes1,dataConv);
%xlim(handles.axes2,[1 4096]);
%title(handles.axes1,'Imagen');

%para que las graficas queden mas xaxipirulis
%hago un reescalado de los datos

% hist_1 = blkproc(handles.histo1(1:4096),[1 4],'mean2');
% hist_2 = blkproc(handles.histo2(1:4096),[1 4],'mean2');
% hist_3 = blkproc(handles.histo3(1:4096),[1 4],'mean2');
% hist_4 = blkproc(handles.histo4(1:4096),[1 4],'mean2');
% 
% 
% tope = max([hist_1, hist_2, hist_3, hist_4]);
% if  (isnan(tope) || tope < 100)
%     tope = 100;
% end
% 
% %plot(handles.axes2,handles.histo1);
% plot(handles.axes2,hist_1);
% ylim(handles.axes2,[0 tope]);
% xlim(handles.axes2,[0 1024]);
% %set(handles.axes2,'XScale','Log');
% %xlim(handles.axes2,[1 4096]);
% title(handles.axes2,'Canal 1');
% 
% %plot(handles.axes3,handles.histo3);
% plot(handles.axes3,hist_3);
% ylim(handles.axes3,[0 tope]);
% xlim(handles.axes3,[0 1024]);
% %set(handles.axes3,'XScale','Log');
% %xlim(handles.axes2,[1 4096]);
% title(handles.axes3,'Canal 3');
% 
% %plot(handles.axes5,handles.histo2);
% plot(handles.axes5,hist_2);
% ylim(handles.axes5,[0 tope]);
% xlim(handles.axes5,[0 1024]);
% %set(handles.axes5,'XScale','Log');
% %xlim(handles.axes2,[1 4096]);
% title(handles.axes5,'Canal 2');
% 
% %plot(handles.axes6,handles.histo4);
% plot(handles.axes6,hist_4);
% ylim(handles.axes6,[0 tope]);
% xlim(handles.axes6,[0 1024]);
% %set(handles.axes6,'XScale','Log');
% %xlim(handles.axes2,[1 4096]);
% title(handles.axes6,'Canal 4');
% 
% %axes(handles.axes1);h
% %axes(handles.axes1);
% imagesc(handles.imagen,'Parent',handles.axes1);
% xlim(handles.axes1,[0 512]);
% ylim(handles.axes1,[0 256]);
% %aux = imshow(mat2gray(handles.imagen));
% %set(aux,'Parent',handles.axes1);
% %set(aux,'Parent',handles.axes1);
% 
% 
%  n_events = round(indice/0.3); %algo mejor seria
%  %sum(temp)/(str2num(get(handles.edit2,'String'))
%  set(handles.text2,'String',num2str(n_events));
% 
% 
% %plot(handles.axes1,temp,'*');
% %set(handles.edit1,'string',num2str(dataConv(1)));
%guidata(handles.guifig, handles);
guidata(hObject,handles);

function plotUpdate(src,event,hObject) %Timer function %handles

handles = guidata(hObject); %handles

hist_1 = blkproc(handles.histo1(1:4096),[1 4],'mean2');
hist_2 = blkproc(handles.histo2(1:4096),[1 4],'mean2');
hist_3 = blkproc(handles.histo3(1:4096),[1 4],'mean2');
hist_4 = blkproc(handles.histo4(1:4096),[1 4],'mean2');


tope = max([hist_1, hist_2, hist_3, hist_4]);
if  (isnan(tope) || tope < 100)
    tope = 100;
end

%plot(handles.axes2,handles.histo1);
plot(handles.axes2,hist_1);
ylim(handles.axes2,[0 tope]);
xlim(handles.axes2,[0 1024]);
%set(handles.axes2,'XScale','Log');
%xlim(handles.axes2,[1 4096]);
title(handles.axes2,'Canal 1');

%plot(handles.axes3,handles.histo3);
plot(handles.axes3,hist_3);
ylim(handles.axes3,[0 tope]);
xlim(handles.axes3,[0 1024]);
%set(handles.axes3,'XScale','Log');
%xlim(handles.axes2,[1 4096]);
title(handles.axes3,'Canal 3');

%plot(handles.axes5,handles.histo2);
plot(handles.axes5,hist_2);
ylim(handles.axes5,[0 tope]);
xlim(handles.axes5,[0 1024]);
%set(handles.axes5,'XScale','Log');
%xlim(handles.axes2,[1 4096]);
title(handles.axes5,'Canal 2');

%plot(handles.axes6,handles.histo4);
plot(handles.axes6,hist_4);
ylim(handles.axes6,[0 tope]);
xlim(handles.axes6,[0 1024]);
%set(handles.axes6,'XScale','Log');
%xlim(handles.axes2,[1 4096]);
title(handles.axes6,'Canal 4');

%axes(handles.axes1);h
%axes(handles.axes1);
imagesc(handles.imagen,'Parent',handles.axes1);
%plot(handles.axes1,handles.energyHist2);
%imagesc(handles.imagen,'Parent',handles.axes1);
xlim(handles.axes1,[1 512]);
ylim(handles.axes1,[1 512]);
%aux = imshow(mat2gray(handles.imagen));
%set(aux,'Parent',handles.axes1);
%set(aux,'Parent',handles.axes1);


 n_events = handles.lastNEvents; %algo mejor seria
 %sum(temp)/(str2num(get(handles.edit2,'String'))
 set(handles.text2,'String',num2str(n_events));

%plot(handles.axes1,temp,'*');
%set(handles.edit1,'string',num2str(dataConv(1)));
guidata(hObject, handles); 



% --- Executes on mouse press over figure background.
function figure1_ButtonDownFcn(hObject, eventdata, handles)
% hObject    handle to figure1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes during object creation, after setting all properties.
function figure1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to figure1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called



% --- Executes when user attempts to close figure1.
function figure1_CloseRequestFcn(hObject, eventdata, handles)
% hObject    handle to figure1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: delete(hObject) closes the figure
delete(hObject);


% --- Executes on mouse press over axes background.
function axes1_ButtonDownFcn(hObject, eventdata, handles)
% hObject    handle to axes1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes during object creation, after setting all properties.
function axes1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to axes1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: place code in OpeningFcn to populate axes1


% --- Executes during object deletion, before destroying properties.
function axes1_DeleteFcn(hObject, eventdata, handles)
% hObject    handle to axes1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
