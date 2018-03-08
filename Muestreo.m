%Programa para cambiar el muestreo de una imagen
%Modificar el valor de n que es la variable que modifica el muestreo.

clear all;
clc;
img = imread("Imagen2.jpg");
[y x]=size(img);
lx1 = num2str(x);
ly1 = num2str(y);
text1 = [lx1 "x" ly1 "pixels"];
imshow(img);
title(text1);
%%%%%% Modificar n
n = 10;
%%%%%%%%%%%%
lonx = x/n;
lony = y/n;
for i = 1:lony
 for j = 1:lonx
  img2(i,j) = img(i*n,j*n);
 endfor
endfor
[limy limx] = size(img2);
lx = num2str(limx);
ly = num2str(limy);
text2 = [lx "x" ly "pixels"];
imwrite(img2, [text2 '.jpg']);
figure
imshow(img2);
title(text2);
