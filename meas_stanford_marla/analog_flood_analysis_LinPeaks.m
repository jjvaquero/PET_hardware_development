%rcp 17  nov 2015
%
% Acquisition from all 4 analog channels, to generate a flood map image
% this will be used to get the relation between the pulsewidth values 
% obtained and the integral values for each pulse


%select the folder where the data is stored
dirName = uigetdir();
%list all the h5 files inside this directory
fList = ls(strcat(dirName,'\','*.h5'));

nFiles = size(fList,1); % number of files to read
% size of the block I will read
bSize = 1000;  % this is to avoid Marla from hanging
% position in the array of file names
cPos = 1; % jarrrr por el puto marla es 1....
remFiles = nFiles; % files left to read
toRead = 0; %files to read on each iteration
% from a previous test, a Vth of 0.4 seems to keep almost the same amount
% of values as a smaller Vth so...i will shift around this value
valTh = 0.35; %valor ya elegido
    
%remFiles = 500; %para pruebas rapidas
%vector containing the widths of all pulse
pWidths = zeros(4,remFiles); % solo pruebo un valor
pAmps = zeros(4,remFiles); 

while remFiles >0
    %check how many values will be read this time
    if remFiles > bSize
        toRead = bSize;
    else
        toRead = remFiles;
    end
    
    for i = cPos: cPos+toRead-1
        %read the data from the h5 files
        fName = strcat(dirName,'\',fList(i,:));
        %only one channel will be used for this %chB
        chB=double(hdf5read(fName,'Waveforms/Channel 1/Channel 1Data'));
        chD=double(hdf5read(fName,'Waveforms/Channel 2/Channel 2Data'));
        chC=double(hdf5read(fName,'Waveforms/Channel 3/Channel 3Data'));
        chA=double(hdf5read(fName,'Waveforms/Channel 4/Channel 4Data'));
        
  
        %offset correction
        chA = chA-mean(chA(1:500));
        chB = chB-mean(chB(1:500));
        chC = chC-mean(chC(1:500));
        chD = chD-mean(chD(1:500));
        %acquire the integral of the pulse
        %pAmps(i+cPos) = trapz(chA);
        %change the integral of the pulse for the peak
        pAmps(1,i+cPos) = max(chA);
        pAmps(2,i+cPos) = max(chB);
        pAmps(3,i+cPos) = max(chC);
        pAmps(4,i+cPos) = max(chD);
        
        %do it like this to minimize the number of I/O operations
        %los tengo que meter todos en allCh
        allCh = [chA'; chB'; chC'; chD'];
        for j = 1 : 4
            % convert it to an square signal
            inds = (find(allCh(j,:)'>valTh)); %to avoid oscilations due to noise
            allCh(j,(min(inds):max(inds)))= 1;
            allCh(j,1:min(inds))= 0;
            allCh(j,max(inds):size(allCh,2))= 0;         
            % find the pulse width
            if size(inds,1) > 5
                pWidths(j,i+cPos) = pulsewidth(allCh(j,:),200e9);
            else
               pWidths(j,i+cPos) = 0;
            end
        end
        
    end
    % could add a condition to save the data...if needed....
    
    % update remFiles and cPos
    remFiles = remFiles-toRead;
    cPos = cPos+toRead;
    
end

%plotting the actual result
figure;
plot(pWidths,pAmps,'*');
legend(['A';'B';'C';'D']);
% try fitting a 3rd order polynomial 
fittedCurves = zeros(size(pWidths));
t = linspace(min(min(pWidths)),max(max(pWidths)),size(pWidths,2));
polyVals = zeros(4,3);
for i = 1 : size(pWidths,1)
    [x,y] = prepareCurveData(pWidths(i,:),pAmps(i,:));
    polyVals(i,:) = polyfit(x,y,2);
    fittedCurves(i,:) = polyval(polyVals(i,:),t);
end
plot(t,fittedCurves);
legend(['A';'B';'C';'D']);

save fittedCurvesA.mat polyVals pWidths pAmps polyVals t

%to test the exp function
for i = 1 : size(pWidths,1)
    [x,y] = prepareCurveData(pWidths(i,:),pAmps(i,:));
    expFit = fit(x,y,'exp1');
    fittedCurves(i,:) = feval(expFit,t);
end
%nada...a lo gitano porque nose como hacer pa que l marla me lo guarda en
% listas
%attempt to clean  my data...
indArr = 1;
nAmps = []; %zeros(4,25000);
nWidths = []; % nAmps;
for i = 1 : size(pWidths,2)
    %store only values that will be used to create the image later on
     if size(find(pWidths(:,i)' > 1e-9),2)>= 3 
         nAmps(:,indArr) = pAmps(:,i);
         nWidths(:,indArr) = pWidths(:,i);
         indArr = indArr+1;
     end
end
strFit = 'poly5';
[x,y] = prepareCurveData(nWidths(1,:),nAmps(1,:));
expFit1 = fit(x,y,strFit);
fittedCurves(1,:) = feval(expFit1,t);
[x,y] = prepareCurveData(nWidths(2,:),nAmps(2,:));
expFit2 = fit(x,y,strFit);
fittedCurves(2,:) = feval(expFit2,t);
[x,y] = prepareCurveData(nWidths(3,:),nAmps(3,:));
expFit3 = fit(x,y,strFit);
fittedCurves(3,:) = feval(expFit3,t);
[x,y] = prepareCurveData(nWidths(4,:),nAmps(4,:));
expFit4 = fit(x,y,strFit);
fittedCurves(4,:) = feval(expFit4,t);

plot(t,fittedCurves);
legend(['A';'B';'C';'D']);

 %jarrrr tengo que tener las amplitudes de todos lso canales....
%hacer la imagen aqui es mucho mas rapido que con el otro tocho
% %algoritmo...
floodImg = zeros(imgSize,imgSize);
floodImgPeaks = zeros(imgSize,imgSize);
 for i = 1 : size(nWidths,2)%no he leido todos los archivos...arreglarlo
     if size(find(nWidths(:,i)' > 10e-9),2)> 3 %ya lo he comprobado ants...
         %organize the values
%          A = feval(polyVals(1,:),pWidths(1,i));
%          B = polyval(polyVals(2,:),pWidths(2,i));
%          C = polyval(polyVals(3,:),pWidths(3,i));
%          D = polyval(polyVals(4,:),pWidths(4,i));
         A = feval(expFit1,nWidths(1,i));
         B = feval(expFit2,nWidths(2,i));
         C = feval(expFit3,nWidths(3,i));
         D = feval(expFit4,nWidths(4,i));
         En = A+B+C+D;
         X = round(((A+D)-(B+C))/En*imgSize/2)+imgSize/2;
         Y = round(((A+B)-(C+D))/En*imgSize/2)+imgSize/2;
         valW = valW+1;
         A1 = nAmps(1,i);
         B1 = nAmps(2,i);
         C1 = nAmps(3,i);
         D1 = nAmps(4,i);
         En1 = A+B+C+D;
         X1 = round(((A1+D1)-(B1+C1))/En*imgSize/2)+imgSize/2;
         Y1 = round(((A1+B1)-(C1+D1))/En*imgSize/2)+imgSize/2;
     else
         X = 0; Y = 0;
         X1 = 0; Y1 = 0;
     end
     %TODO
     % add support for histogram measurement
     
     %generate the image and the histograms
     %if En>0 && En<imgSize
     %    enHist(En) = enHist(En)+1;
     %image generation
     if X>0 && X<imgSize*2 && Y>0 && Y<imgSize*2
         floodImg(X,Y) = floodImg(X,Y)+1;
         val = val+1;
     end
     if X1>0 && X1<imgSize && Y1>0 && Y1<imgSize
         floodImgPeaks(X1,Y1) = floodImgPeaks(X1,Y1)+1;
     end
 end
 imagesc(floodImg);
 figure;
 imagesc(floodImgPeaks);