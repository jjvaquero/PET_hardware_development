%rcp 23  nov 2015
%
% convert the data obtained previously to use it to train a neural network

%load the file with the widths and the amplitudes
load('fittedCurves_vth015.mat');

%variables where data will be stored
nData = 10000; %amount of data to save
outPos = zeros(2,nData); % X, Y values
inWidths = zeros(4,nData); % A,B,C,D widths
storedVals = 0;
imgSize = 256;
floodImg = zeros(imgSize, imgSize);
index = 0;
while storedVals < nData || index > size(pWidths,2)
    %use only values where all pulses are more than 1 ns in length
    index = index+1;
    if (size(find(pWidths(:,index)' > 1e-9),2)> 3)
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
            inWidths(:,storedVals) = pWidths(:,index);
            outPos(:,storedVals) = [X;Y];
            floodImg(X,Y) = floodImg(X,Y)+1;
        end
    end
end

%save the values
save 'nn_inputs_vth015.mat' 'outPos' 'inWidths' 'floodImg'

%repeat it to keep the values to check the solution
%variables where data will be stored
nData = 10000; %amount of data to save
outPos2 = zeros(2,nData); % X, Y values
inWidths2 = zeros(4,nData); % A,B,C,D widths
storedVals = 0;
floodImg2 = zeros(imgSize, imgSize);
while storedVals < nData || index > size(pWidths,2)
    %use only values where all pulses are more than 1 ns in length
    index = index+1;
    if (size(find(pWidths(:,index)' > 1e-9),2)> 3)
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
            inWidths2(:,storedVals) = pWidths(:,index);
            outPos2(:,storedVals) = [X;Y];
            floodImg2(X,Y) = floodImg2(X,Y)+1;
        end
    end
end

%save the values
save 'nn_validation_vth015.mat' 'outPos2' 'inWidths2' 'floodImg2'
