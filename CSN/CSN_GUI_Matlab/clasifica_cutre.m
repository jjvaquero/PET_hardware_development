%funcion para clasificar con las medias anteriormente obtenidas
%infame, vil y ruin....pero funciona


function [str_isotopo,num_is] = clasifica_cutre(histo_entrada)

%cargo el archivo con las medias, que asumo 
%esta en la misma carpeta
load medias_clasificacion_2.mat
%primero para los dos sodios
hist_calc = histo_entrada(1:400)';

restas = zeros(8,400);
for i = 1:8
    restas(i,:) = medias(i,:) - hist_calc;
end
sumas = sum(abs(restas'));

[valor, clase] = min(sumas);
switch clase
    case 1
        str_isotopo = 'Bario 133';
        num_is = 1; 
    case 2 
        str_isotopo = 'Cobalto 60';
        num_is = 2; 
    case 3
        str_isotopo = 'Cesio 137';
        num_is = 3; 
    case 4
        str_isotopo = 'Manganeso 54';
        num_is = 4;
    case 5 
        str_isotopo = 'Sodio 22';
        num_is = 5;
    case 6
        str_isotopo = 'Cobalto 57';
        num_is = 6; 
    case 7
        str_isotopo = 'Zinc 65';
        num_is = 7; 
    case 8 
        str_isotopo = 'Cadmio 109';
        num_is = 8;        
end

disp(str_isotopo);
