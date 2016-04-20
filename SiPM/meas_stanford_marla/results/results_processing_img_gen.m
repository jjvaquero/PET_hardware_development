% script hecho solo para sacar todos los plots de resultados necesarios a
% partir de los datos ya almacenados de episodios anteriores
nFiles = 25000; %distinto para cada caso
%show the amount of valid events depending on the threshold values used
figure;
%to get as percentage
plot(valThs,(acceptedEvts/nFiles)*100);

%show the different flood images depending on the amplitudes selected for
%the threshold value
%try plotting all the values
figure;
for i = 1: size(valThs2,2)/2 %size(valThs2,2)
    %subplot(3,4,i);
    subplot(2,3,i);
    imagesc(squeeze(floodImg(i,:,:)));
    colormap('hot');
    title(num2str(valThs2(i)));
end

%flood maps generated from using the widths
%try plotting all the values
figure;
for i = 1: size(valThs2,2)/2 %size(valThs2,2)
    %subplot(3,4,i);
    subplot(2,3,i);
    imagesc(squeeze(floodImgWidths(i,:,:)));
    colormap('hot');
    title(num2str(valThs2(i)));
end

% I will read and plot 100 signals in to show the nonlinearity effect
%select the folder where the data is stored
dirName = uigetdir();
%list all the h5 files inside this directory
fList = ls(strcat(dirName,'\','*.h5'));

chA = [];
for i = 232:332
    fName = strcat(dirName,'\',fList(i,:));
    chVal=double(hdf5read(fName,'Waveforms/Channel 4/Channel 4Data'));
    if size(find(chVal(1:2500)>0.04),1) < 5
        chA(i,:) = chVal;
    end
end
% t = 0:5e-12:(size(chA,2)-1)*5e-12;
% figure; hold on;
% for i = 1 : size(chA,1)
%     plot(t,chA(i,:)');
% end
plot(chA');

%to show the relaton between amplitude and width  for one channel
% for different vth values
figure;
vals = pWidths(:,1,:);
vals = squeeze(vals);
plot(vals,pAmps(1,:),'.');
legend(num2str(valThs2'));

%meter por alguna parte el histograma de energia
remFiles = size(pWidths,3);
energiaW = zeros(size(valThs2,2),remFiles);
for i = 1 : size(valThs2,2)
    for j = 1 : remFiles
        A = pWidths(i,1,j); 
        B = pWidths(i,2,j); 
        C = pWidths(i,3,j); 
        D = pWidths(i,4,j); 
        energiaW(i,j) = A+B+C+D;  
    end
end
energiaA = zeros(1,remFiles);
for i = 1: remFiles
    energiaA(i) = sum(pAmps(:,i));
end
figure;
histoA = hist(energiaA,512);
plot(histoA);xlim([3 512]);
figure;
for i = 1: size(valThs2,2)
    subplot(3,4,i);
    histog = hist(energiaW(i,:),512);
    plot(histog);xlim([3 512]);
    title(num2str(valThs2(i)));
end


%pongo esto así a lo bruto para poder elegir que Vth usar
%do it only fot the 0.45 Vth value
imgSize = 256;
sRate = 5e-12; %cambia en algunas medidas
pulseWidths =  squeeze(pWidths(2,:,:));
%try different fittings
strTest = [{'exp1'};{'exp2'};{'poly2'};{'poly3'};{'poly4'};{'poly5'}];
%create a flood for all the differente fittings
floodFitted = zeros(size(strTest,1),imgSize,imgSize);
for j = 1 : size(strTest,1)
    strFit = strTest{j};
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
    % fittedCurves(1,:) = feval(expFit1,t);
    % fittedCurves(2,:) = feval(expFit2,t);
    % fittedCurves(3,:) = feval(expFit3,t);
    % fittedCurves(4,:) = feval(expFit4,t);
    % %figure;
    % plot(t,fittedCurves);
    % legend(['A';'B';'C';'D']);
    %generate the image
    for i = 1 : size(pulseWidths,2)
        if (size(find(pulseWidths(:,i)' > 5e-9/sRate),2)> 3) % && (size(find(pulseWidths(:,i)' < 50e-9),2)> 3)  %ya lo he comprobado ants...
            A = feval(expFit1,pulseWidths(1,i));
            B = feval(expFit2,pulseWidths(2,i));
            C = feval(expFit3,pulseWidths(3,i));
            D = feval(expFit4,pulseWidths(4,i));
            En = A+B+C+D;
            X = round(((A+D)-(B+C))/En*imgSize/2)+imgSize/2;
            Y = round(((A+B)-(C+D))/En*imgSize/2)+imgSize/2;
            if X>0 && X<imgSize && Y>0 && Y<imgSize
                floodFitted(j,X,Y) = floodFitted(j,X,Y)+1;
            end
        end
    end
end
%try plotting all the values
figure;
for i = 1: size(strTest,1)
    subplot(2,3,i);
    imagesc(squeeze(floodFitted(i,:,:)));
    colormap('hot');
    title(num2str(strTest{i}));
end