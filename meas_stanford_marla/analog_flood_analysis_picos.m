%rcp 17  nov 2015
%
% Acquisition from all 4 analog channels, to generate a flood map image

%select the folder where the data is stored
dirName = uigetdir();
%list all the h5 files inside this directory
fList = ls(strcat(dirName,'\','*.h5'));

% here i should add a condition to run this on chunks of 1000-5000
% evens/files, so that my PC doesn't die
imgSize = 256;
floodImg = zeros(imgSize,imgSize);
enHist = zeros(1,imgSize*2); 
nFiles = size(fList,1); % number of files to read
% size of the block I will read
bSize = 1000;  % this is to avoid Marla from hanging
% position in the array of file names
cPos = 1; % jarrrr por el puto marla es 1....
remFiles = nFiles; % files left to read
toRead = 0; %files to read on each iteration
val = 0;

remFiles = 5000;
while remFiles >0  
    %check how many values will be read this time
    if remFiles > bSize
        toRead = bSize;
    else
        toRead = remFiles;
    end
    
    for i = cPos: cPos+toRead
        %read the data from the h5 files
        fName = strcat(dirName,'\',fList(i,:));
        chB=double(hdf5read(fName,'Waveforms/Channel 1/Channel 1Data'));
        chD=double(hdf5read(fName,'Waveforms/Channel 2/Channel 2Data'));
        chC=double(hdf5read(fName,'Waveforms/Channel 3/Channel 3Data'));
        chA=double(hdf5read(fName,'Waveforms/Channel 4/Channel 4Data'));
        
        %integral calculation
        %offset correction
        chA = chA-mean(chA(1:500));
        chB = chB-mean(chB(1:500));
        chC = chC-mean(chC(1:500));
        chD = chD-mean(chD(1:500));
        
        A = max(chA);
        B = max(chB);
        C = max(chC);
        D = max(chD);
        En = A+B+C+D;
        X = round(((A+D)-(B+C))/En*imgSize/2)+imgSize/2;
        Y = round(((A+B)-(C+D))/En*imgSize/2)+imgSize/2;
        
        %TODO 
        % add support for histogram measurement
        
        %generate the image and the histograms
        %if En>0 && En<imgSize
        %    enHist(En) = enHist(En)+1;
        %image generation
        if X>0 && X<imgSize && Y>0 && Y<imgSize
            floodImg(X,Y) = floodImg(X,Y)+1;
            val = val+1;
        end
        % end
        
    end
    % could add a condition to save the data...if needed....
    
    % update remFiles and cPos
    remFiles = remFiles-toRead;
    cPos = cPos+toRead;
    
    % pa ver que va pirulando
    imagesc(floodImg);
end

    


