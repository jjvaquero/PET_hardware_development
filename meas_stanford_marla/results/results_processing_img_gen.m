% script hecho solo para sacar todos los plots de resultados necesarios a
% partir de los datos ya almacenados de episodios anteriores

%show the amount of valid events depending on the threshold values used
figure;
%to get as percentage
hold on;
for i = 1 : size(valThs,2)
    hold on;
    plot(valThs(i),(acceptedEvts(i)./nFiles)*100);
end

%show the different flood images depending on the amplitudes selected for
%the threshold value
%try plotting all the values
figure;
for i = 1: size(valThs2,2)
    subplot(3,4,i);
    imagesc(squeeze(floodImg(i,:,:)));
    colormap('hot');
    title(num2str(valThs2(i)));
end

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
    histog = hist(energia(i,:),512);
    plot(histog);xlim([3 512]);
    title(num2str(valThs2(i)));
end