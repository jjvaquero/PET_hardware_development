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