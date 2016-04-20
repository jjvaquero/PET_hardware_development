%rcp 17  nov 2015
%
% Acquisition from all 4 analog channels, to generate a flood map image
%
% generate a different flood map depending on the threshold values to use

%select the folder where the data is stored
dirName = uigetdir();
%list all the h5 files inside this directory
fList = ls(strcat(dirName,'\','*.h5'));

% here i should add a condition to run this on chunks of 1000-5000
% evens/files, so that my PC doesn't die
imgSize = 256;
nFiles = size(fList,1); % number of files to read
% size of the block I will read
bSize = 1000;  % this is to avoid Marla from hanging
% position in the array of file names
cPos = 1; % jarrrr por el puto marla es 1....
remFiles = nFiles; % files left to read
toRead = 0; %files to read on each iteration
val = 0;
valThs = 0.1:0.05:0.35;
floodImg = zeros(size(valThs,2),imgSize,imgSize);

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
        %do it like this to minimize the number of I/O operations
        %only need to make this mat once per event
        A = max(chA);
        B = max(chB);
        C = max(chC);
        D = max(chD);
        En = A+B+C+D;
        X = round(((A+D)-(B+C))/En*imgSize/2)+imgSize/2;
        Y = round(((A+B)-(C+D))/En*imgSize/2)+imgSize/2;
        for x = 1: size(valThs,2)
            %better put them in an array...to avoid repeating code
            allCh = [chA'; chB'; chC'; chD'];
            pWidths = zeros(1,4);
            indVals = 0; %used to only measure pulsewidths on events 
              %on which all 4 channels qualify 
            for j = 1 : 4
                % convert it to an square signal
                inds = find(allCh(j,:)>valThs(x)); %to avoid oscilations due to noise
                if size(inds,2) > 5 
                    allCh(j,(min(inds):max(inds)))= 1;
                    allCh(j,1:min(inds))= 0;
                    allCh(j,max(inds):size(allCh,2))= 0;
                    % find the pulse width
                    %pWidths(j) = pulsewidth(allCh(j,:),20e9);
                    indVals = indVals +1;
                %else
                    %pWidths(j) = 0;
                end
            end
            if indVals == 4
                for j = 1:4
                    pWidths(j) = pulsewidth(allCh(j,:),200e9);
                end
            end
            
            % condition to the check that the pulse widths make sense
            if (size(find(pWidths > 5e-9),2)> 3) && (size(find(pWidths <100e-9),2)> 3)
                if X>0 && X<imgSize && Y>0 && Y<imgSize
                    floodImg(x,X,Y) = floodImg(x,X,Y)+1;
                end                
            end
            
        end
        %TODO 
        % add support for histogram measurement
        
        %generate the image and the histograms
        %if En>0 && En<imgSize
        %    enHist(En) = enHist(En)+1;
        %image generation
        % end
        
    end
    % could add a condition to save the data...if needed....
    
    % update remFiles and cPos
    remFiles = remFiles-toRead;
    cPos = cPos+toRead;
    
end

save floodImg_peaksVth.mat floodImg valThs

%try plotting all the values
figure;
for i = 1: size(valThs,2)
    subplot(2,3,i);
    imagesc(squeeze(floodImg(i,:,:)));
    title(num2str(valThs(i)));
end

    


