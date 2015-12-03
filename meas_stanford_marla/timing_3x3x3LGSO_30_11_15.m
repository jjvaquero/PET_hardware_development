%  RCP - 01 / 12 / 2015 
%
%algorithm for timing analysis, similar to the one already implemented on
% python, the idea is to use this data to check taht I get good results,
% and later use it on my own acquired data

%%
%  First is the event validation part
%
%  - I will generate a histogram of the energy channels and use that to
%  classify events as valid or not
%  - After that events will also be studied taking their shape into
%  consideration, those that start to soon or to late, or are very noisy
%  will also be discarded

%select the folder where the data is stored
dirName = uigetdir();
%list all the h5 files inside this directory
fList = ls(strcat(dirName,'\','*.h5'));
sRate = 50e-12; %sample rate used
%name of the file where the results will be stored
fSaveName = 'timing_3x3x3LGSO_30_11_15.mat';

nFiles = size(fList,1); % number of files to read
% size of the block I will read
bSize = 1000;  % this is to avoid Marla from hanging
% position in the array of file names
cPos = 1; % jarrrr por el puto marla es 1....
remFiles = nFiles; % files left to read
toRead = 0; %files to read on each iteration

%array where all energy values will be stored...trapz y a correr
energies  = zeros(2,remFiles);
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
        En1=double(hdf5read(fName,'Waveforms/Channel 3/Channel 3Data'));
        En2=double(hdf5read(fName,'Waveforms/Channel 4/Channel 4Data'));           
        %do it like this to minimize the number of I/O operations
        energies(1,i) = trapz(En1);
        energies(2,i) = trapz(En2);      
    end   
    % update remFiles and cPos
    remFiles = remFiles-toRead;
    cPos = cPos+toRead;   
end
%this previous part is only needed once, because from this we will get the
%energy spectra laterd used to discard events
%using bin limits allows me to later convert the data back to the energy
% info, some values of en2 are left out, but the effect on the histogram is
% almost nothing
[histoEn1x,histoEn1y] = hist(energies(1,:),512);
[histoEn2x,histoEn2y] = hist(energies(2,:),512);
%plot these two
figure; 
subplot(1,2,1); plot(histoEn1x,histoEn1y);title('Energy 1');
subplot(1,2,2); plot(histoEn2x,histoEn2y);title('Energy 2');
%adjust a gaussian to the data

%fit a guassian to these values
% to avoid using to many temporary variables lets reduce this
strFit = 'gauss1';
validInterval = zeros(2,2);
%values choosen from visual inspection of the data
gaussVals = histoEn1x(77:186); 
t = 77:186;
[x,y] = prepareCurveData(histoEn1y(t),gaussVals);
gFit = fit(x,y,strFit);
vals = feval(gFit,histoEn1y(t));
%to check that it works 
%figure; plot(histoEn1y(t),gaussVals); hold on; plot(histoEn1y(t),vals);
[v,mPos] = max(vals);
maxVal = histoEn1y(t(mPos));
validInterval(1,:) = [(maxVal-gFit.c1*2),(maxVal+gFit.c1*2)];
%repeat this for the second energy channel
gaussVals = histoEn2x(111:195);
t = 111:195;
[x,y] = prepareCurveData(histoEn2y(t),gaussVals);
gFit = fit(x,y,strFit);
vals = feval(gFit,histoEn2y(t));
%to check that it works 
%figure; plot(histoEn2y(t),gaussVals); hold on; plot(histoEn2y(t),vals);
[v,mPos] = max(vals);
maxVal = histoEn2y(t(mPos));
validInterval(2,:) = [(maxVal-gFit.c1*2),(maxVal+gFit.c1*2)];

%  now I can keep only those events that qualify as valid events on both
%  channels
valEvents = [];
nEvents = 0;
for i = 1: size(energies,2)
    %es lo mismo que un find con mil condiciones pero esto es mas facil de
    %entender
    if ((energies(1,i)>validInterval(1,1) && energies(1,i)< validInterval(1,2))...
            && (energies(2,i)>validInterval(2,1) && energies(2,i)< validInterval(2,2)))
        nEvents = nEvents+1;
        valEvents(nEvents) = i;
    end     
end
%save the results 
save(fSaveName,'valEvents','histoEn1','histoEn2');

%discard even more events now taking into account the position of the Vth
% crossing- this time Vth will be 0.03
nFiles = size(fList,1); % number of files to read
% size of the block I will read

VthMid = 0.02; %from the data
dSize = 2e-9/50e-12; %amount of values to use for the checks
vCrossings = zeros(2,nEvents);
baseMeans = ones(2,nEvents);
for i = 1: nEvents
    %read the data from the h5 files
    
    fName = strcat(dirName,'\',fList(valEvents(i),:));
    Tm1=double(hdf5read(fName,'Waveforms/Channel 1/Channel 1Data'));
    Tm2=double(hdf5read(fName,'Waveforms/Channel 2/Channel 2Data'));
    %do it like this to minimize the number of I/O operations
    
    [v,pos] = find(Tm1>VthMid);
    vCrossings(1,i) = min(v);
    [v,pos] = find(Tm2>VthMid);
    vCrossings(2,i) = min(v);
    if (vCrossings(1,i) > dSize*3 && vCrossings(2,i) > dSize*3)
        baseMeans(1,i) = mean(Tm1(vCrossings(1,i)-dSize*2:vCrossings(1,i)-dSize));
        baseMeans(2,i) = mean(Tm2(vCrossings(2,i)-dSize*2:vCrossings(2,i)-dSize));
    end
end
%now another validation
medCrossings = [median(vCrossings(1,:)), median(vCrossings(2,:))];
bMeansTh = [-0.002, 0.002];
nEvents2 = 0;
valEvents2 = [];
for i = 1: nEvents
    if (vCrossings(1,i) > (medCrossings(1)-dSize) && vCrossings(1,i)<(medCrossings(1)+dSize))...
            &&(vCrossings(2,i) > (medCrossings(2)-dSize) && vCrossings(2,i)<(medCrossings(2)+dSize))...
            &&(baseMeans(1,i)>bMeansTh(1) && baseMeans(1,i)<bMeansTh(2))...
            &&(baseMeans(2,i)>bMeansTh(1) && baseMeans(2,i)<bMeansTh(2))
        nEvents2 = nEvents2+1;
        valEvents2(nEvents2) = valEvents(i);
    end
end       
%with all of this i can greatly reduce the amount of data to process
%later... so it will go faster...results should also improve since I am
%taking out all the noisy data...still I have more than 2000 values
save(fSaveName,'valEvents2','-append');

%%
%    Timing measurement part
%
%   - Find the point where the events cross Vth, from there take the N
%   values and consider them to be the rising part of the event, take the
%   N-100 to N values (100 values before the event) and fit a line to it
%   - TODO ...consider discading those events where the baseline incline is
%   bigger than X
%   - Use linear interpolation in the area considered as event to get a
%   timing resolution of 0.05 ps...so considering a sample rate of 50 ps,
%   I have to use N samples*1000. (consider taking very few values for the
%   interpolation)
%   - using different threshold values find the crossing point, take this
%   values by first subtracting the basline value


%process only the needed data
tSample = 50e-12; 
medVal = 0.02;
%thV = 15e-4; % luego volver a hacerlo para iterar
thV = 40e-4:5e-4:115e-4;
tCh1 = zeros(size(thV,2),size(valEvents2,2));
tCh2 = tCh1;

for i = 1:size(valEvents2,2)
    %read the data from the h5 files
    fName = strcat(dirName,'\',fList(valEvents2(i),:));
    Tm1=double(hdf5read(fName,'Waveforms/Channel 1/Channel 1Data'));
    Tm2=double(hdf5read(fName,'Waveforms/Channel 2/Channel 2Data'));
    %do it like this to minimize the number of I/O operations
    for j = 1 : size(thV,2)
        tCh1(j,i) = getThPos(Tm1,thV(j),medVal,tSample);
        tCh2(j,i) = getThPos(Tm2,thV(j),medVal,tSample);
    end
end

crtVals = zeros(size(thV,2),size(thV,2));
tDiff=(medCrossings(2)-medCrossings(1))*50e-12;
figure;
for i = 1: size(thV,2)
    for j = 1 : size(thV,2)
        diffVals = tCh1(i,:)-(tCh2(j,:)-tDiff);
        [hx,hy] = hist(diffVals,512);
        strFit = 'gauss1';
        [x,y] = prepareCurveData(hy,hx);
        gFit = fit(x,y,strFit);
        vals = feval(gFit,hy);
        crtVals(i,j) = gFit.c1*2.35;
%         subplot(4,4,i);
%         plot(hy,hx); hold on; plot(hy,vals);
%         title(num2str(thV(i)));
    end
end
figure;
imagesc(crtVals);
save(fSaveName,'tCh1','tCh2','crtVals','thV','-append');



