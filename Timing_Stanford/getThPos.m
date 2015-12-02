%   RCP - 01 / 12 / 2015 
%   
%  function used to find the crossing point of the pulses
%
% tCrossing value in seconds
% event -- event that will be processed
% thVal -- threshold value to use
% medTh -- medium threshold if nothing is specified max/2 will be used
% tSample -- time between samples 50e-12 by default

function tCrossing = getThPos(event, thVal, medTh,tSample)
if nargin < 3
    tSample = 50e-12;
end
if nargin < 2
    medTh = max(event)/2;
end
%first I need to find the crossing of medTh
medCross = find(event > medTh,1);
%take two nanoseconds before the crossing
nData = 2e-9/tSample;
baseLine = mean(event((medCross-nData*2):(medCross-nData)));
t = (medCross-nData):medCross;
%now interpolate the new data
t2 = linspace(t(1),t(end),nData*1000);
%first interpolation
interEvent = interp1(t,event(t),t2,'pchip'); %mismo que cubic
%now find the crossing
fCross= t2(find(interEvent< (thVal-baseLine),1,'last'));
%use a second interpolation from the first values to get a finer
% measurement
% t3 = (fCross-nData):(fCross+nData);
% t4 = linspace(t3(1),t3(end),1000);
% %second interpolation
% interEvent2 = interp1(t3,interEvent(t3),t4); 
% %find the crossing point again
% defCross = t4(find(interEvent2< thVal,1,'last'));
% % change the data from the sample domain to the time domain
%this fix is only needed when using uncorrected data, with the corrected
%data this should not be needed
if isempty(fCross)
    defCross = nan(1);
else
    defCross = fCross;
end
%defCross = fCross;
tCrossing = defCross*tSample;

