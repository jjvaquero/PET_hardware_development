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
valThs = 0.25:0.025:0.45;
acceptedEvts = zeros(1,size(valThs,2)); %number of accepted events
    
%remFiles = 200; %para pruebas rapidas
%vector containing the widths of all pulse
pWidths = zeros(size(valThs,2),remFiles); % lo mismo son demasiados...
pAmps = zeros(4,remFiles); 

remFiles = 5000;
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
        for x = 1: size(valThs,2)
            valTh = valThs(x);
            
            chAc = chA;
            % convert it to an square signal
            inds = (find(chA>valTh)); %to avoid oscilations due to noise
            chAc((min(inds):max(inds)))= 1;
            chAc(1:min(inds))= 0;
            chAc(max(inds):size(chAc,1))= 0;
            % find the pulse width
            if size(inds,1) > 5
                pWidth = pulsewidth(chAc,200e9);
            else
                pWidth = 0;
            end
                       
            % condition to the check that the pulse widths make sense
            if  pWidth > 5e-9
                acceptedEvts(x) = acceptedEvts(x)+1;
            end
            pWidths(x,i+cPos) = pWidth;
        end
    end
    % could add a condition to save the data...if needed....
    
    % update remFiles and cPos
    remFiles = remFiles-toRead;
    cPos = cPos+toRead;
    
end

%plot to check that it worked
plot(valThs,acceptedEvts);
%plotting the actual result
figure;
plot(pWidths,pAmps,'*');
legend(num2str(valThs'));
% try fitting a 3rd order polynomial 
fittedCurves = zeros(size(pWidths));
t = linspace(min(min(pWidths)),max(max(pWidths)),size(pWidths,2));
polyVals = zeros(9,3);
for i = 1 : size(pWidths,1)
    [x,y] = prepareCurveData(pWidths(i,:),pAmps);
    polyVals(i,:) = polyfit(x,y,2);
    fittedCurves(i,:) = polyval(polyVals(i,:),t);
end
plot(t,fittedCurves);
legend(num2str(valThs'));

save fittedCurvesA.mat polyVals pWidths pAmps polyVals t

%to test the exp function
for i = 1 : size(pWidths,1)
    [x,y] = prepareCurveData(pWidths(i,:),pAmps);
    expFit = fit(x,y,'exp1');
    fittedCurves(i,:) = feval(expFit,t);
end
plot(t,fittedCurves);
legend(num2str(valThs'));

 %jarrrr tengo que tener las amplitudes de todos lso canales....
%hacer la imagen aqui es mucho mas rapido que con el otro tocho
% %algoritmo...
% for i = 1 : 5000 %no he leido todos los archivos...arreglarlo
%     if size(find(pWidths > 10e-9),2)> 3
%               %organize the values
%             A = feval(polyVs,pWidths(1));
%             B = feval(polyVs,pWidths(2));
%             C = feval(polyVs,pWidths(3));
%             D = feval(polyVs,pWidths(4));
%             En = A+B+C+D;
%             X = round(((A+D)-(B+C))/En*imgSize/2)+imgSize/2;
%             Y = round(((A+B)-(C+D))/En*imgSize/2)+imgSize/2;
%             valW = valW+1;
%         else
%             X = 0; Y = 0;
%         end       
%         %TODO 
%         % add support for histogram measurement
%         
%         %generate the image and the histograms
%         %if En>0 && En<imgSize
%         %    enHist(En) = enHist(En)+1;
%         %image generation
%         if X>0 && X<imgSize && Y>0 && Y<imgSize
%             floodImg(X,Y) = floodImg(X,Y)+1;
%             val = val+1;
%         end


