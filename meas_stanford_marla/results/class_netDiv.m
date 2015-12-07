%newtwork for classificatiokn
%  dividing the image into smaller squares, just using the network didnt
%  worked so...lets try a new approach
%

%first prepare the data
load('analog_flood_all_17_11_15.mat')
imgNN_01_17_11 = squeeze(floodImg(1,:,:));

imgNN = imgNN_01_17_11; %so that the name is shorter
% the other one is like that to know from what image i took it

%black and white mask of only the pixels
imgBW = imgNN > 6; %7 is also fine...still very low threshold value
img2 = imgNN.*imgBW; 
imagesc(img2);

%now prepare the classes
cc = bwconncomp(imgBW);
labeled = labelmatrix(cc);
RGB_label = label2rgb(labeled, @copper, 'c', 'shuffle');
imshow(RGB_label,'InitialMagnification','fit');

%there are some loose pixels...get rid of them
stats = regionprops(cc, 'Area');
idx = find([stats.Area] > 5);
BW2 = ismember(labelmatrix(cc), idx);
%repeat it to keep only the needed labels
cc2 = bwconncomp(BW2);
labeled = labelmatrix(cc2);
RGB_label = label2rgb(labeled, @copper, 'c', 'shuffle');
imshow(RGB_label,'InitialMagnification','fit');

%obtain just the centers
stats2 = regionprops(cc2, 'Centroid');
centers = zeros(2,size(stats2,1));
for i = 1 : size(stats2,1)
    centers(:,i) = stats2(i).Centroid;
end

%reorder the data
labelsOrd = labeled;
% do the same for the centers
centersOrd = centers;
labelsOrd(find(labeled == 3)) = 4;
centersOrd(:,3) = centers(:,4);
labelsOrd(find(labeled == 4)) = 3;
centersOrd(:,4) = centers(:,3);
labelsOrd(find(labeled == 7)) = 8;
centersOrd(:,7) = centers(:,8);
labelsOrd(find(labeled == 8)) = 7;
centersOrd(:,8) = centers(:,7);
labelsOrd(find(labeled == 10)) = 9;
centersOrd(:,10) = centers(:,9);
labelsOrd(find(labeled == 9)) = 10;
centersOrd(:,9) = centers(:,10);
labelsOrd(find(labeled == 14)) = 13;
centersOrd(:,13) = centers(:,14);
labelsOrd(find(labeled == 15)) = 14;
centersOrd(:,14) = centers(:,15);
labelsOrd(find(labeled == 16)) = 15;
centersOrd(:,15) = centers(:,16);
labelsOrd(find(labeled == 13)) = 16;
centersOrd(:,16) = centers(:,13);

%reshape it to work better with it
centersOrd = reshape(centersOrd,2,4,4);

%find the crossing points, not done with an array because the data is not
%well sorted...could implement a sorting algorithm but....
borders = zeros(2,3,3);
%fisrt the x values
for i = 1 : size(centersOrd,2)-1
    for j = 1 : size(centersOrd,3)-1
        borders(1,i,j) = mean(centersOrd(1,i,j:j+1));
        borders(2,i,j) = mean(centersOrd(2,i:i+1,j));
    end
end
%can be improved for the elements in the last row

imgClass = zeros(256,256);
%x lines
% for i = 1 : 3
%     imgClass(1:borders(1,i,1),borders(2,i,1)) = 1;
%     imgClass(borders(1,1,i),1:borders(2,1,i)) = 1;
%     imgClass(borders(1,i,3):256,borders(2,i,3)) = 1;
%     imgClass(borders(1,3,i),borders(2,3,i):256) = 1;
% end
% for i = 1 : 2
%     for j = 1 : 2
%         imgClass(borders(1,i,j),borders(2,i,j):borders(2,i+1,j)) = 1;
%         imgClass(borders(1,i,j):borders(1,i,j+1),borders(2,i,j)) = 1;
%     end
% end
% for i = 1: 2
%     imgClass(borders(1,i,3),borders(2,i,3):borders(2,i+1,3)) = 1;
%     imgClass(borders(1,3,i):borders(1,3,i+1),borders(2,3,i)) = 1;
% end
for j = 1 : 4
     for i = 1:4
         if i == 1
             x(1) = 1+2;
             x(2) = round((centersOrd(2,i+1,j)+centersOrd(2,i,j))/2)-2;
         elseif i == 4
             x(2) = 256-2;
             x(1) = round((centersOrd(2,i,j)+centersOrd(2,i-1,j))/2)-2;
         else
             x(1) = round((centersOrd(2,i,j)+centersOrd(2,i-1,j))/2)-2;
             x(2) = round((centersOrd(2,i,j)+centersOrd(2,i+1,j))/2)-2;
         end
         if j == 1
             y(1) = 1+2;
             y(2) = round(centersOrd(1,i,j+1)+(centersOrd(1,i,j))/2)-2;
         elseif j == 4
             y(2) = 256-2;
             y(1) = round((centersOrd(1,i,j)+centersOrd(1,i,j-1))/2)-2;
         else
             y(1) = round((centersOrd(1,i,j)+centersOrd(1,i,j-1))/2)-2;
             y(2) = round((centersOrd(1,i,j)+centersOrd(1,i,j+1))/2)-2;
         end
         imgClass(x(1):x(2),y(1):y(2)) = i+((j-1)*4);
     end
end
%now i can check the classes
imagesc(imgClass);


%now keep the list of pixels that i will use for my classes
classes = imgClass;

%generate the classification matrix
imgClass = zeros(max(max(classes)),size(pAmps,2));
imgSize = 256;
for i = 1 : size(pAmps,2)
     A = pAmps(1,i);
     B = pAmps(2,i);
     C = pAmps(3,i);
     D = pAmps(4,i);
     En = A+B+C+D;
     X = round(((A+D)-(B+C))/En*imgSize/2)+imgSize/2;
     Y = round(((A+B)-(C+D))/En*imgSize/2)+imgSize/2;
     if X>0 && X<imgSize && Y>0 && Y<imgSize
         imgClass(classes(X,Y),i) = 1;
         %img(j,X,Y) = floodFitted(j,X,Y)+1;
     end
end

%prepare data for training
netInputs = squeeze(pWidths(2,:,1:10000));
netOutputs = imgClass(:,1:10000);

%network generation ....training etc
%
% This script assumes these variables are defined:
%
%   netInputs - input data.
%   netOutputs - target data.

inputs = netInputs;
targets = netOutputs;

% Create a Pattern Recognition Network
hiddenLayerSize = 100;
net = patternnet(hiddenLayerSize);


% Setup Division of Data for Training, Validation, Testing
net.divideParam.trainRatio = 60/100;
net.divideParam.valRatio = 20/100;
net.divideParam.testRatio = 20/100;


% Train the Network
[net,tr] = train(net,inputs,targets);

% Test the Network
outputs = net(inputs);
errors = gsubtract(targets,outputs);
performance = perform(net,targets,outputs)

% View the Network
view(net)

% Plots
% Uncomment these lines to enable various plots.
%figure, plotperform(tr)
%figure, plottrainstate(tr)
%figure, plotconfusion(targets,outputs)
%figure, ploterrhist(errors)

% Plots
% Uncomment these lines to enable various plots.
%figure, plotperform(tr)
%figure, plottrainstate(tr)
%figure, plotconfusion(targets,outputs)
%figure, ploterrhist(errors)

%data to test the network
netInputs2 = squeeze(pWidths(2,:,10001:20000));
netOutputs2 = imgClass(:,10001:20000);


outS = net(netInputs2);
%esto me da solo el scatter, dividirlo en solo 16 clases usando cuadraddos
%y luego dividirlos otra vez para detectar solo el scatter
