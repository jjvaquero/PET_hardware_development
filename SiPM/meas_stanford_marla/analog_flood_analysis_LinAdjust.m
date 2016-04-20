%rcp 17  nov 2015
%
% try to find a combination of good fitting and good image....

%a lo brutorrrr
strTest = [{'exp1'};{'exp2'};{'poly2'};{'poly3'};{'poly4'};{'poly5'};{'fourier3'};{'fourier4'}];
imgs = zeros(size(strTest,2),256,256);


for var = 1 : size(strTest,1)

%first load the 0.35 thresholds and use them for fitting
load('fitted_curves_vth_035.mat')
%nada...a lo gitano porque nose como hacer pa que l marla me lo guarda en
% listas
%attempt to clean  my data...
nT = sort(pWidths');
nT = nT';
nT = nT(:,24500:49001);
indArr = 1;
nAmps = []; %zeros(4,25000);
nWidths = [];
indArray = zeros(1,4); 
for i = 2 : size(nT,2)
    %one amp value per time value...also ...all sorted...nice...
    for j = 1: 4
        if nT(j,i)~=nT(j,i-1)
           indArray(j) = indArray(j)+1;
           nAmps(j,indArray(j)) = mean(pAmps(j,(find(pWidths(j,:)==nT(j,i)))));
           nWidths(j,indArray(j)) = nT(j,i);
        end
    end
end
strFit = strTest{var}; %'poly3';  %exp1 se ve bien para 0.35
[x,y] = prepareCurveData(nWidths(1,:),nAmps(1,:));
expFit1 = fit(x,y,strFit);
%fittedCurves(1,:) = feval(expFit1,t);
[x,y] = prepareCurveData(nWidths(2,:),nAmps(2,:));
expFit2 = fit(x,y,strFit);
%fittedCurves(2,:) = feval(expFit2,t);
[x,y] = prepareCurveData(nWidths(3,:),nAmps(3,:));
expFit3 = fit(x,y,strFit);
%fittedCurves(3,:) = feval(expFit3,t);
[x,y] = prepareCurveData(nWidths(4,:),nAmps(4,:));
expFit4 = fit(x,y,strFit);
%fittedCurves(4,:) = feval(expFit4,t);

%plot(t,fittedCurves);
%legend(['A';'B';'C';'D']);

%for the image generation used the values with a lower vth
%load('fittedCurves_vth015.mat');

 %jarrrr tengo que tener las amplitudes de todos lso canales....
%hacer la imagen aqui es mucho mas rapido que con el otro tocho
% %algoritmo...
floodImg = zeros(imgSize,imgSize);
floodImgPeaks = zeros(imgSize,imgSize);
 for i = 1 : size(pWidths,2)%no he leido todos los archivos...arreglarlo
     if size(find(pWidths(:,i)' > 1e-9),2)> 3 %ya lo he comprobado ants...
         %organize the values
%          A = feval(polyVals(1,:),pWidths(1,i));
%          B = polyval(polyVals(2,:),pWidths(2,i));
%          C = polyval(polyVals(3,:),pWidths(3,i));
%          D = polyval(polyVals(4,:),pWidths(4,i));
         A = feval(expFit1,pWidths(1,i));
         B = feval(expFit2,pWidths(2,i));
         C = feval(expFit3,pWidths(3,i));
         D = feval(expFit4,pWidths(4,i));
         En = A+B+C+D;
         X = round(((A+D)-(B+C))/En*imgSize/2)+imgSize/2;
         Y = round(((A+B)-(C+D))/En*imgSize/2)+imgSize/2;
         valW = valW+1;
         A1 = pAmps(1,i);
         B1 = pAmps(2,i);
         C1 = pAmps(3,i);
         D1 = pAmps(4,i);
         En1 = A1+B1+C1+D1;
         X1 = round(((A1+D1)-(B1+C1))/En1*imgSize/2)+imgSize/2;
         Y1 = round(((A1+B1)-(C1+D1))/En1*imgSize/2)+imgSize/2;
     else
         X = 0; Y = 0;
         X1 = 0; Y1 = 0;
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
     if X1>0 && X1<imgSize && Y1>0 && Y1<imgSize
         floodImgPeaks(X1,Y1) = floodImgPeaks(X1,Y1)+1;
     end
 end
 %imagesc(floodImgPeaks);
 %figure;
 %imagesc(floodImg);
 %title(strFit);
 imgs(var,:,:) = floodImg;
end
%try plotting all the images....
figure;
for i = 1: size(strTest,1)
    subplot(2,4,i);
    imagesc(squeeze(imgs(i,:,:)));
    title(strTest{i});
end
