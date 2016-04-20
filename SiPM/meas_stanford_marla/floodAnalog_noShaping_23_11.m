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

%

    
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
        chA=double(hdf5read(fName,'Waveforms/Channel 1/Channel 1Data'));
        chD=double(hdf5read(fName,'Waveforms/Channel 2/Channel 2Data'));
        chC=double(hdf5read(fName,'Waveforms/Channel 3/Channel 3Data'));
        chB=double(hdf5read(fName,'Waveforms/Channel 4/Channel 4Data'));
           
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

%save the values in chase they are needed later
save('floodAnalog_noShaping_2311_res.mat','valThs','acceptedEvts');
%save(filename,variables,'-append')

%valuable interval to see how well it behaves 0.5 - 0.75
% higher values are chosen because ToT linerity improves with them

% save also the amplitudes and the widths in case I need them

%%
%  Now generate flood images using all of the data
%
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
valThs2 = 0.15:0.05:0.7; 
floodImg = zeros(size(valThs2,2),imgSize,imgSize);
pWidths = zeros(size(valThs2,2),4,remFiles); % solo pruebo un valor
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
        chA=double(hdf5read(fName,'Waveforms/Channel 1/Channel 1Data'));
        chD=double(hdf5read(fName,'Waveforms/Channel 2/Channel 2Data'));
        chC=double(hdf5read(fName,'Waveforms/Channel 3/Channel 3Data'));
        chB=double(hdf5read(fName,'Waveforms/Channel 4/Channel 4Data'));
        
        %integral calculation
        %offset correction
        chA = chA-mean(chA(1:500));
        chB = chB-mean(chB(1:500));
        chC = chC-mean(chC(1:500));
        chD = chD-mean(chD(1:500));
        %do it like this to minimize the number of I/O operations
        %only need to make this mat once per event
        A = trapz(chA); %max(chA);
        B = trapz(chB); %max(chB);
        C = trapz(chC); %max(chC);
        D = trapz(chD); % max(chD);
        En = A+B+C+D;
        X = round(((A+D)-(B+C))/En*imgSize/2)+imgSize/2;
        Y = round(((A+B)-(C+D))/En*imgSize/2)+imgSize/2;
        %store the amplitude values in case they are needed later
        pAmps(1,i+cPos) = max(chA);
        pAmps(2,i+cPos) = max(chB);
        pAmps(3,i+cPos) = max(chC);
        pAmps(4,i+cPos) = max(chD);
        for x = 1: size(valThs2,2)
            %better put them in an array...to avoid repeating code
            allCh = [chA'; chB'; chC'; chD'];
            pWidth = zeros(1,4);
            indVals = 0; %used to only measure pulsewidths on events 
              %on which all 4 channels qualify 
            for j = 1 : 4
                % convert it to an square signal
                inds = find(allCh(j,:)>valThs(x)); %to avoid oscilations due to noise
                if size(inds,2) > 5 
                    allCh(j,(min(inds):max(inds)))= 1;
                    allCh(j,1:min(inds))= 0;
                    allCh(j,max(inds):size(allCh,2))= 0;
                    indVals = indVals +1;
                    pWidth(j) = (max(inds)-min(inds))*5e-12; 
                end
            end

            
            % condition to the check that the pulse widths make sense
            if (size(find(pWidth > 5e-9),2)> 3) 
                if X>0 && X<imgSize && Y>0 && Y<imgSize
                    floodImg(x,X,Y) = floodImg(x,X,Y)+1;
                end                
            end
            pWidths(x,:,i+cPos) = pWidth;
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
%try plotting all the values
figure;
for i = 1: size(valThs2,2)
    subplot(3,4,i);
    imagesc(squeeze(floodImg(i,:,:)));
    title(num2str(valThs2(i)));
end
%to show the relaton between amplitude and width  for one channel
% for different vth values
figure;
vals = pWidths(:,1,:);
vals = squeeze(vals);
plot(vals,pAmps(1,:),'.');
legend(num2str(valThs2'));

save('floodAnalog_noShaping_2311_res.mat','valThs2','floodImg','pAmps','pWidths','-append');

%%
% Now I should try making images with the widths
% should not be so hard...for the pc at least....
%
floodImgWidths = zeros(size(valThs2,2),imgSize,imgSize);
%to keep the previous naming
remFiles = size(pWidths,3);
% for quick testing
remFiles = 5000;
for i = 1 : size(valThs2,2)
    for j = 1 : remFiles
        A = pWidths(i,1,j); 
        B = pWidths(i,2,j); 
        C = pWidths(i,3,j); 
        D = pWidths(i,4,j); 
        En = A+B+C+D;
        X = round(((A+D)-(B+C))/En*imgSize/2)+imgSize/2;
        Y = round(((A+B)-(C+D))/En*imgSize/2)+imgSize/2;
        % condition to the check that the pulse widths make sense
        if (size(find(pWidths(i,:,j) > 5e-9),2)> 3) %&& (size(find(pWidths(i,:,j )< 150e-9),2)> 3)
            if X>0 && X<imgSize && Y>0 && Y<imgSize
                floodImgWidths(i,X,Y) = floodImgWidths(i,X,Y)+1;
            end
        end
    end
end
%try plotting all the values
figure;
for i = 1: size(valThs2,2)
    subplot(3,4,i);
    imagesc(squeeze(floodImgWidths(i,:,:)));
    title(num2str(valThs2(i)));
end
save('floodAnalog_noShaping_2311_res.mat','floodImgWidths','-append');

%%
%  Use curve fitting to calculate the new results
%
%do it only fot the 0.45 Vth value
pulseWidths =  squeeze(pWidths(7,:,:));
strFit = 'exp2';
[x,y] = prepareCurveData(pulseWidths(1,:),pAmps(1,:));
expFit1 = fit(x,y,strFit);
[x,y] = prepareCurveData(pulseWidths(2,:),pAmps(2,:));
expFit2 = fit(x,y,strFit);
[x,y] = prepareCurveData(pulseWidths(3,:),pAmps(3,:));
expFit3 = fit(x,y,strFit);
[x,y] = prepareCurveData(pulseWidths(4,:),pAmps(4,:));
expFit4 = fit(x,y,strFit);
t = linspace(min(min(pulseWidths)),max(max(pulseWidths)),size(pulseWidths,2));
%see how good my fit is
fittedCurves(1,:) = feval(expFit1,t);
fittedCurves(2,:) = feval(expFit2,t);
fittedCurves(3,:) = feval(expFit3,t);
fittedCurves(4,:) = feval(expFit4,t);
figure;
plot(t,fittedCurves);
legend(['A';'B';'C';'D']);
%generate a new image with the fitted data
imgFitted = zeros(imgSize,imgSize);
for i = 1 : size(pulseWidths,2)
    if (size(find(pulseWidths(:,i)' > 1e-9),2)> 3) % && (size(find(pulseWidths(:,i)' < 50e-9),2)> 3)  %ya lo he comprobado ants...
         A = feval(expFit1,pulseWidths(1,i));
         B = feval(expFit2,pulseWidths(2,i));
         C = feval(expFit3,pulseWidths(3,i));
         D = feval(expFit4,pulseWidths(4,i));
         En = A+B+C+D;
         X = round(((A+D)-(B+C))/En*imgSize/2)+imgSize/2;
         Y = round(((A+B)-(C+D))/En*imgSize/2)+imgSize/2;
         if X>0 && X<imgSize && Y>0 && Y<imgSize
             imgFitted(X,Y) = imgFitted(X,Y)+1;             
         end
    end
end
figure; 
imagesc(imgFitted);
save('floodAnalog_noShaping_2311_res.mat','imgFitted','-append');



    