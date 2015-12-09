%%
%   Try using a neural network for image generation....classification 
%   if we want to go for 4 possible clusters...should be trivial....
%
%
%variables where data will be stored
vThSel = 1; %lowest threshold value, in this case 0.1
nData = 7500; %amount of data to save
netOuts = zeros(4,nData); % X, Y values
netIns = zeros(4,nData); % A,B,C,D widths
storedVals = 0;
sRate = 5e-12;
imgSize = 256;
index = 0;
%this values will be used for training
while storedVals < nData && index < size(pWidths,3)
    %use only values where all pulses are more than 1 ns in length
    index = index+1;
    if (size(find(pWidths(vThSel,:,index) > 5e-9/sRate),2)> 3)
        % compute the X, Y values
        storedVals = storedVals+1;
        netIns(:,storedVals) =  pWidths(vThSel,:,index);
        netOuts(:,storedVals) = pAmps(:,index);
        storedVals = storedVals+1;
    end
end

%repeat it to keep the values to check the solution
%variables where data will be stored
nData = 7500; %amount of data to save
netIns2 = zeros(4,nData); % X, Y values
netOuts2 = zeros(4,nData); % A,B,C,D widths
storedVals = 0;
while storedVals < nData && index < size(pWidths,3)
    %use only values where all pulses are more than 1 ns in length
    index = index+1;
    if (size(find(pWidths(vThSel,:,index) > 5e-9/sRate),2)> 3)
        % compute the X, Y values
        storedVals = storedVals+1;
        netIns2(:,storedVals)  =  pWidths(vThSel,:,index);
        netOuts2(:,storedVals)  = pAmps(:,index);
        
    end
end

%%
%   Divide it in two to test only the network part
%
%now generate the network...train it and...see the result
inputs = netIns;
targets = netOuts;
% Create a Fitting Network
hiddenLayerSize = 512; %100; % [64 16];
net = fitnet(hiddenLayerSize,'trainlm');


% Setup Division of Data for Training, Validation, Testing
net.divideParam.trainRatio = 75/100;
net.divideParam.valRatio = 15/100;
net.divideParam.testRatio = 15/100;
%modify the training parameters
%net.trainParam.max_fail = 12;


% Train the Network
[net,tr] = train(net,inputs,targets);

% Test the Network
outputs = net(netIns2);
%errors = gsubtract(outPos2,outputs);
%performance = perform(net,outPos2,outputs)

%use the values in outputs to generate a new image 
val = 0;
floodImgNN = zeros(imgSize,imgSize);
for i = 1 : size(outputs,2)
    if (size(find(netIns2(:,i) > 5e-9/sRate),1)> 3)
        A = outputs(1,i);
        B = outputs(2,i);
        C = outputs(3,i);
        D = outputs(4,i);
        En = A+B+C+D;
        X = round(((A+D)-(B+C))/En*imgSize/2)+imgSize/2;
        Y = round(((A+B)-(C+D))/En*imgSize/2)+imgSize/2;
        if X>0 && X<imgSize && Y>0 && Y<imgSize
            floodImgNN(X,Y) = floodImgNN(X,Y)+1;
            val = val+1;
        end
    end
end
figure;
%now generate the image
% Xt = linspace(min(outputs(1,:)),max(outputs(1,:)),150);
% Yt = linspace(min(outputs(2,:)),max(outputs(2,:)),150);
% floodImgNN = hist2(outputs(1,:),outputs(2,:),Xt,Yt);
imagesc(floodImgNN);
colormap('hot');