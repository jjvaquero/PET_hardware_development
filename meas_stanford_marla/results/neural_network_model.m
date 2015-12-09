%%
%   Try using a neural network for image generation....classification 
%   if we want to go for 4 possible clusters...should be trivial....
%
%
%variables where data will be stored
vThSel = 1; %lowest threshold value, in this case 0.1
nData = 2500; %amount of data to save
outPos1 = zeros(2,nData); % X, Y values
inWidths1 = zeros(4,nData); % A,B,C,D widths
storedVals = 0;
sRate = 50e-12;
imgSize = 256;
floodNN1 = zeros(imgSize, imgSize);
index = 0;
%this values will be used for training
while storedVals < nData && index < size(pWidths,3)
    %use only values where all pulses are more than 1 ns in length
    index = index+1;
    if (size(find(pWidths(vThSel,:,index) > 5e-9/sRate),2)> 3)
        % compute the X, Y values
        A = pAmps(1,index);
        B = pAmps(2,index);
        C = pAmps(3,index);
        D = pAmps(4,index);
        En = A+B+C+D;
        X = round(((A+D)-(B+C))/En*imgSize/2)+imgSize/2;
        Y = round(((A+B)-(C+D))/En*imgSize/2)+imgSize/2;
        %check that these values could be used to generate an image
        if X>0 && X<imgSize && Y>0 && Y<imgSize
            storedVals = storedVals+1;
            inWidths1(:,storedVals) = pWidths(vThSel,:,index);
            outPos1(:,storedVals) = [X;Y];
            floodNN1(X,Y) = floodNN1(X,Y)+1;
        end
    end
end

%repeat it to keep the values to check the solution
%variables where data will be stored
nData = 2500; %amount of data to save
outPos2 = zeros(2,nData); % X, Y values
inWidths2 = zeros(4,nData); % A,B,C,D widths
storedVals = 0;
floodNN2 = zeros(imgSize, imgSize);
while storedVals < nData && index < size(pWidths,3)
    %use only values where all pulses are more than 1 ns in length
    index = index+1;
    if (size(find(pWidths(vThSel,:,index) > 5e-9/sRate),2)> 3)
        % compute the X, Y values
        A = pAmps(1,index);
        B = pAmps(2,index);
        C = pAmps(3,index);
        D = pAmps(4,index);
        En = A+B+C+D;
        X = round(((A+D)-(B+C))/En*imgSize/2)+imgSize/2;
        Y = round(((A+B)-(C+D))/En*imgSize/2)+imgSize/2;
        %check that these values could be used to generate an image
        if X>0 && X<imgSize && Y>0 && Y<imgSize
            storedVals = storedVals+1;
            inWidths2(:,storedVals) = pWidths(vThSel,:,index);
            outPos2(:,storedVals) = [X;Y];
            floodNN2(X,Y) = floodNN2(X,Y)+1;
        end
    end
end

%%
%   Divide it in two to test only the network part
%
%now generate the network...train it and...see the result
inputs = inWidths1;
targets = outPos1;
% Create a Fitting Network
hiddenLayerSize = [128 64 16]; %100; % [64 16];
net = fitnet(hiddenLayerSize,'trainlm');


% Setup Division of Data for Training, Validation, Testing
net.divideParam.trainRatio = 75/100;
net.divideParam.valRatio = 15/100;
net.divideParam.testRatio = 15/100;
%modify the training parameters
net.trainParam.max_fail = 15;


% Train the Network
[net,tr] = train(net,inputs,targets);

% Test the Network
insT = [inWidths1,inWidths2];
outputs = net(insT);
%errors = gsubtract(outPos2,outputs);
%performance = perform(net,outPos2,outputs)

%use the values in outputs to generate a new image 
val = 0;
floodImgNN = zeros(imgSize,imgSize);
for i = 1 : size(outputs,2)
    if (size(find(insT(:,i) > 5e-9/sRate),1)> 3)
        X = round(outputs(1,i));
        Y = round(outputs(2,i));
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