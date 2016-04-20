% script hecho solo para sacar todos los plots de resultados necesarios a
% partir de los datos ya almacenados de episodios anteriores

%show the amount of valid events depending on the threshold values used
figure;
%to get as percentage
plot(valThs,(acceptedEvts/nFiles)*100);