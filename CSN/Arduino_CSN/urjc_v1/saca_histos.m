% a ver si tengo espertroossssss
arxivo = fopen('datos_leidos2.raw');
%me aseguro que estoy en el comienzo de un nuevo histograma
valor = fread(arxivo,1,'uint8');
datos = zeros(50,1024);
for i=1:50
    while valor ~= 13 
        valor = fread(arxivo,1,'uint8');
    end
    datos(i,:) = fread(arxivo,1024,'uint16');
end

fclose(arxivo);
plot(datos(25,:));
suma = sum(datos);
%comentario...para probar el svn
figure; plot(suma);