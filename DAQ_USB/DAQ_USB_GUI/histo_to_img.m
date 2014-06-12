%script para analizar los img_histo

 function imagen = histo_to_img(img_array)

imagen = zeros(100,100);
for i = 1: 100
    for j = 1 : 100
        imagen(i,j) = sum(img_array(i,j,:));
    end
end

