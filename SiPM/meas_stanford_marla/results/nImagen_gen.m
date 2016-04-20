%try other imagen generation method
pulseWidth = squeeze(pWidths(1,:,:));
%now try to make an image ou of it
X = zeros(1,size(pulseWidth,2));
Y = X; 
for j = 1: size(pulseWidth,2)
    A = pulseWidth(1,j);
    B = pulseWidth(2,j);
    C = pulseWidth(3,j);
    D = pulseWidth(4,j);
    En = A+B+C+D;
    X(j) = ((A+D)-(B+C))/En;
    Y(j) = ((A+B)-(C+D))/En;   
end
%now generate the image
Xt = linspace(-1,1,150);
Yt = linspace(-1,1,150);
img = hist2(X,Y,Xt,Yt);
imagesc(img);

%the fit...just doesnt make sense...repeat this for the neural network
%output