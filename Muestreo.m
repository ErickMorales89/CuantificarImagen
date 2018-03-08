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
n = 5;
lonx = x/n;
lony = y/n;
lx = num2str(round(lonx));
ly = num2str(round(lony));
for i = 1:lony
 for j = 1:lonx
  img2(i,j) = img(i*n,j*n);
 endfor
endfor
text2 = [lx "x" ly "pixels"];
figure
imshow(img2);
title(text2);
