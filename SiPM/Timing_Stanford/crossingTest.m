%
%  RCP - 2 / 12 / 2015
%
%codigo para probar la funcion de medida con unos cuantos canales
%
%
%
load('tempChannels.mat');
tCr1 = zeros(1,size(ch1,1));
tCr2 = zeros(1,size(ch2,1));
tSample = 50e-12; 
medVal = 0.03;
thV = 15e-4; % luego volver a hacerlo para iterar

for i = 1 : size(ch1,1)
    tCr1(i) = getThPos(ch1(i,:),thV,medVal,tSample);
    tCr2(i) = getThPos(ch2(i,:),thV,medVal,tSample);
end

diffVals = tCr1-tCr2;
[hx,hy] = hist(diffVals,2048);
plot(hx,hy);

%%
%   Test para analizar los datos de josh a ver que le sale a el
%
load('results-200to100.mat')
crtVals = zeros(size(timestamp1,1),size(timestamp1,2));
figure;
for i = 1: size(timestamp1,1)
    for j = 1 : size(timestamp1,2)
        diffVals =squeeze(timestamp1(i,j,:)-timestamp2(i,j,:));
        [hx,hy] = hist(diffVals,2048);
        strFit = 'gauss1';
        [x,y] = prepareCurveData(hy,hx);
        gFit = fit(x,y,strFit);
        vals = feval(gFit,hy);
        crtVals(i,j) = gFit.c1; %*2.35;
        %subplot(4,4,i);
        %plot(hy,hx); hold on; plot(hy,vals);
        %title(num2str(i));
    end
end
figure;
imagesc(crtVals);