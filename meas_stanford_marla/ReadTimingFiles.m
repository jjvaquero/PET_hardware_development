clc%clear only if not cancel uigetfile
clear
[fnH5 path]=uigetfile({'*.h5','HDF5 (*.h5)'},'Select HDF5 files','MultiSelect','on');


for kk=1:1
    pfnH5=strcat(path,fnH5{kk});
    tD.AcqVolts1(1,:)=hdf5read(pfnH5,'Waveforms/Channel 4/Channel 4Data');
    a=size(tD.AcqVolts1);
    t=[1:a(1,2)].*0.05;
end 

%clear only if not cancel uigetfile
if path~=0; end%clearvars -except fnH5 path;end
if ischar(fnH5);fnH5={fnH5};end

%%
% step through each file selected by uigetfile
for kk=1:size(fnH5,2)
    tic
    pfnH5=strcat(path,fnH5{kk});
    %disp(pfnH5)
    
    % retrieve Datasets
    test1=hdf5read(pfnH5,'Waveforms/Channel 1/Channel 1Data').*1;
    test2=hdf5read(pfnH5,'Waveforms/Channel 2/Channel 2Data').*1;
    test3=hdf5read(pfnH5,'Waveforms/Channel 3/Channel 3Data').*1;
    test4=hdf5read(pfnH5,'Waveforms/Channel 4/Channel 4Data').*1;
  
end