%Programa para cambiar el muestreo de una imagen
%

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
imwrite(img2, 'Imagen2a.jpg');
img3 = imread('Imagen2a.jpg');
[limy limx] = size(img3);
lx = num2str(limx);
ly = num2str(limy);
text2 = [lx "x" ly "pixels"];
figure
imshow(img3);
title(text2);
