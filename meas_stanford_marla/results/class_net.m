%newtwork for classificatiokn

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

%now keep the list of pixels that i will use for my classes
imagesc(labeled);
classes = labeled;

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
         imgClass(classes(X,Y)+1,i) = 1;
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
