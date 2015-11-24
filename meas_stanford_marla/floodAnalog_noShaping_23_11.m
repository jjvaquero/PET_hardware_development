%rcp 24 nov 2015
%
% this will do all the processing on this measurement...
% divide the code using %%% to later execute it by parts


%%
%   First the plot showing the number of events that I will keep by using
%   different threshold values
%

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
valThs = 0.1:0.05:0.9;
acceptedEvts = zeros(1,size(valThs,2)); %number of accepted events



    
remFiles = 2100; %para pruebas rapidas
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
           
        %do it like this to minimize the number of I/O operations
        for x = 1: size(valThs,2)
            %better put them in an array...to avoid repeating code
            allCh = [chA'; chB'; chC'; chD'];
            pWidth = zeros(1,4);
            indVals = 0; %used to only measure pulsewidths on events 
              %on which all 4 channels qualify 
            for j = 1 : 4
                %offset correction
                allCh(j,:) = allCh(j,:)-mean(allCh(j,1:500));
                % convert it to an square signal
                inds = find(allCh(j,:)>valThs(x)); %to avoid oscilations due to noise
                if size(inds,2) > 5 
                    allCh(j,(min(inds):max(inds)))= 1;
                    allCh(j,1:min(inds))= 0;
                    allCh(j,max(inds):size(allCh,2))= 0;
                    indVals = indVals +1;
                    % 50 e-12 --- sampling rate = 20e9
                    % el cacharro ha volvido a meterme el redondeo...
                    % asi que....
                    % 5 e-12 --- sampling rate 200e9
                    pWidth(j) = (max(inds)-min(inds))*5e-12; 
                end
            end
            %pulsewidth is a very precise algorithm...but not needed for
            %this estimation so instead...just a subtraction and a
            % multiplication
%             if indVals == 4
%                 for j = 1:4
%                     pWidths(j) = pulsewidth(allCh(j,:),200e9);                    
%                 end
%             end
            
            % condition to the check that the pulse widths make sense
            % second condition removed in this case I have no idea on how
            % big will pulses be
            if (size(find(pWidth > 5e-9),2)> 3) % && (size(find(pWidth <100e-9),2)> 3)
                acceptedEvts(x) = acceptedEvts(x)+1;
            end
        end
    end
    % could add a condition to save the data...if needed....
    
    % update remFiles and cPos
    remFiles = remFiles-toRead;
    cPos = cPos+toRead;
    
end

%plot the final result
plot(valThs,acceptedEvts);
figure;
%to get as percentage
plot(valThs,(acceptedEvts/2100)*100);