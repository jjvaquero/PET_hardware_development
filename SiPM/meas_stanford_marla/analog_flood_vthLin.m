%rcp 17  nov 2015
%
% Acquisition from all 4 analog channels, to generate a flood map image
% obtain the flood map applying the linearization factor from the previous
% test

%first I load the linearization values
% load linFactors.mat
% they are inside a variable called polyComps
% each line corresponds to the thresholds stored on valThs
%judging from the reuslts I will take the values that correspond to 0.3
%...TODO...I could probably iterate to see how it looks

 polyVs = zeros(4,3);
% load fittedCurvesA.mat
 polyVs(1,:) = polyVals(1,:); %polyComps(5,:);
% load fittedCurvesB.mat
 polyVs(2,:) = polyVals(2,:); %polyComps(5,:);
% load fittedCurvesC.mat
 polyVs(3,:) = polyVals(3,:); %polyComps(5,:);
% load fittedCurvesD.mat
 polyVs(4,:) = polyVals(4,:); %polyComps(5,:);


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
valTh = 0.35; 

remFiles = 5000; %para pruebas rapidas 
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
        valInds = 0; %use this to find only pulsewidths on accepted events
        for j = 1 : 4
            %offset correction
            allCh(j,:) = allCh(j,:)-mean(allCh(j,1:500));
            % convert it to an square signal
            inds = (find(allCh(j,:)'>valTh)); %to avoid oscilations due to noise
            allCh(j,(min(inds):max(inds)))= 1;
            allCh(j,1:min(inds))= 0;
            allCh(j,max(inds):size(allCh,2))= 0;         
            % find the pulse width
            if size(inds,1) > 5
                valInds = valInds+1;
            %     pWidths(j) = pulsewidth(allCh(j,:),20e9);
            %else
            %    pWidths(j) = 0;
            end
        end
        % only find the width of the events that qualify
        if valInds == 4
            for j = 1 :4
                pWidths(j) = pulsewidth(allCh(j,:),200e9);
            end
        end
                    
        % condition to the check that the pulse widths make sense
        if size(find(pWidths > 10e-9),2)> 3
              %organize the values
            A = polyval(polyVs(1,:),pWidths(1));
            B = polyval(polyVs(2,:),pWidths(2));
            C = polyval(polyVs(3,:),pWidths(3));
            D = polyval(polyVs(4,:),pWidths(4));
            En = A+B+C+D;
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

    


