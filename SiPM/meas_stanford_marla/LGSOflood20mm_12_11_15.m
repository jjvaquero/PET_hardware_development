%select the folder where the data is stored
dirName = uigetdir();
%list all the h5 files inside this directory
fList = ls(strcat(dirName,'\','*.h5'));
fSaveName = '20mmLGSOflood_12_11_15.mat';

%%
% step through each file selected by uigetfile
validEventsEn = [];
validEventsTm = [];
validCount = 0;
thesVal = 0.1;
nFiles = size(fList,1); % number of files to read
% size of the block I will read
bSize = 1000;  % this is to avoid Marla from hanging
% position in the array of file names
cPos = 1; % jarrrr por el puto marla es 1....
remFiles = nFiles; % files left to read
toRead = 0; %files to read on each iteration

%remFiles = 1000; %para pruebas rapidas
while remFiles >0
    %check how many values will be read this time
    if remFiles > bSize
        toRead = bSize;
    else
        toRead = remFiles;
    end
    
    for i = cPos: cPos+toRead-1
        pfnH5=strcat(dirName,'\',fList(i,:));        
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
        if size(find(widths > 5e-9),2) == 4
            validCount = validCount+1;
            validEventsEn(validCount,:) = energyCh;
            validEventsTm(validCount,:) = timingCh;
        end
        
    end
    
    % update remFiles and cPos
    remFiles = remFiles-toRead;
    cPos = cPos+toRead;
 end
 % the number of valid events will be so low that i dont have to worry
 % about processing to much data
 %save the valid events in case i need them afterwards
 save(fSaveName,'validEventsEn','validEventsTm');
    
 %now the data processing part...this could be copied to another file and
 %just read the data from first_results.mat
 %first the easiest...generate an energy histogram
 energies = zeros(1,size(validEventsTm,1));
 energiesEn = energies;
 for i = 1:size(validEventsTm,1)
     % use this or trapz...whatever is faster
     %energies(i) = pulsewidth(validEventsTm(i,:),20e9)';
     %nada trapz porque lo otro da el follon...
     energies(i) = trapz(validEventsTm(i,:));
     energiesEn(i) = trapz(validEventsEn(i,:));
 end
 %now do the histogram and plot it
 histoTm = hist(energies,256);
 histoEn = hist(energiesEn,256);
 
 %try and create a flood image
 imgSize = 256;
 img = zeros(imgSize,imgSize);
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
     X = round(((A+D)-(B+C))/energies(i)*imgSize/2)+imgSize/2;
     Y = round(((A+B)-(C+D))/energies(i)*imgSize/2)+imgSize/2;
     if X>0 && X<imgSize && Y>0 && Y<imgSize
         img(X,Y) = img(X,Y)+1;
     end
 end
 %now ...another energy histogram
 histoEnCh = hist(energies,256);

%now I can plot the two histograms
figure; 
subplot(1,2,1); plot(histoTm); title('Timing');
subplot(1,2,2); plot(histoEnCh); title('Energy');
%another image to show the actual detected image
figure; 
imagesc(img);
%save all the corresponding values
save(fSaveName,'histoTm','histoEnCh','img','-append');
   


