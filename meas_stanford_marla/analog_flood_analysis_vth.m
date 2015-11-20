%rcp 17  nov 2015
%
% Acquisition from all 4 analog channels, to generate a flood map image
% in this case instead of using the 

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
valW = 0;
%later I will have to iterate around this value...
valTh = 0.25; 

%remFiles = 2000; %para pruebas rapidas 
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
        
        %better put them in an array...to avoid repeating code
        allCh = [chA'; chB'; chC'; chD'];
        pWidths = zeros(1,4);
        for j = 1 : 4
            %offset correction
            allCh(j,:) = allCh(j,:)-mean(allCh(j,1:2000));
            % convert it to an square signal
            inds = (find(allCh(j,:)'>valTh)); %to avoid oscilations due to noise
            allCh(j,(min(inds):max(inds)))= 1;
            allCh(j,1:min(inds))= 0;
            allCh(j,max(inds):size(allCh,2))= 0;         
            % find the pulse width
            if size(inds,1) > 5
                pWidths(j) = pulsewidth(allCh(j,:),20e9);
            else
                pWidths(j) = 0;
            end
        end
        
        %organize the values
        A = pWidths(1);
        B = pWidths(2);
        C = pWidths(3);
        D = pWidths(4);
        En = A+B+C+D;
        
        % condition to the check that the pulse widths make sense
        if size(find(pWidths > 5e-9),2)> 3
            X = round(((A+D)-(B+C))/En*imgSize/2)+imgSize/2;
            Y = round(((A+B)-(C+D))/En*imgSize/2)+imgSize/2;
            valW = valW+1;
        else
            X = 0; Y = 0;
        end       
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

    


