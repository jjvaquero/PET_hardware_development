clc%clear only if not cancel uigetfile
clear
[fnH5 path]=uigetfile({'*.h5','HDF5 (*.h5)'},'Select HDF5 files','MultiSelect','on');


%clear only if not cancel uigetfile
if path~=0; end%clearvars -except fnH5 path;end
if ischar(fnH5);fnH5={fnH5};end

%%
% step through each file selected by uigetfile
validEventsEn = [];
validEventsTm = [];
validCount = 0;
thesVal = 0.1;
leftVals = size(fnH5,2);
nEventsToRead = 0;
nWrite = 0;
while leftVals > 0  
    %first read the data to get only the values I want
    if leftVals > 10000
        nEventsToRead = 10000;
    else
        nEventsToRead = leftVals;     
    for kk=((nWrite*nEventsToRead)+1:nEventsToRead %size(fnH5,2)
        pfnH5=strcat(path,fnH5{kk});
        %disp(pfnH5)
        
        %data for channels 2 and 4
        % channel 2 is the energy info, channel 4 is the timing
        energyCh=double(hdf5read(pfnH5,'Waveforms/Channel 2/Channel 2Data'));
        timingCh=double(hdf5read(pfnH5,'Waveforms/Channel 4/Channel 4Data'));
        
        %first check wich contain valid pulses and store those numbers on a an
        %array
        %convert the energy channel into a nice clean square signal to make it
        %easier for the pulsewidth function
        % pa luego ... <
        squareEnergy = energyCh';
        squareEnergy(find(energyCh'<thesVal))= 0;
        squareEnergy(find(energyCh'>thesVal))= 1;
        widths = pulsewidth(squareEnergy,20e9);
        if size(widths,2)== 4
            validCount = validCount+1;
            validEventsEn(validCount,:) = energyCh;
            validEventsTm(validCount,:) = timingCh;
        end
        
    end
    
    %now the data processing part...this could be copied to another file and
    %just read the data from first_results.mat
    
    %first the easiest...generate an energy histogram
    energies = zeros(1,size(validEventsTm,1));
    for i = 1:size(validEventsTm,1)
        % use this or trapz...whatever is faster
        %energies(i) = pulsewidth(validEventsTm(i,:),20e9)';
        %nada trapz porque lo otro da el follon...
        energies(i) = trapz(validEventsTm(i,:));
    end
    %now do the histogram and plot it
    histoEn = hist(energies,256);
    
    %try and create a flood image
    img = zeros(256,256);
    energies = zeros(1,size(validEventsEn,1));
    for i = 1 : size(validEventsEn,1)
        squareEnergy = validEventsEn(i,:);
        squareEnergy(find(validEventsEn(i,:)'<thesVal))= 0;
        squareEnergy(find(validEventsEn(i,:)'> thesVal))= 1;
        widths = pulsewidth(squareEnergy,20e9);
        A = widths(1);
        B = widths(2);
        C = widths(3);
        D = widths(4);
        energies(i) = A+B+C+D;
        %anger logic part
        X = round(((A+D)-(B+C))/energies(i)*128)+128;
        Y = round(((A+B)-(C+D))/energies(i)*128)+128;
        img(X,Y) = img(X,Y)+1;
    end
    %now ...another energy histogram
    histoEnCh = hist(energies,256);
    % chan chan chan....
    %imagesc(img);
end

   


