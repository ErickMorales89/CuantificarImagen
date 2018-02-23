clear all;
clc;
img = imread("Imagen2.jpg");
[x y]=size(img);
img1 = img;
disp("Programa para cuantizar una imagen");
nbits = input("Ingresa en cuantos bits quieres que se represente la imagen (1-8): ");
imshow(img);
N = 2^(9-nbits);%= 255/nbits;
for i = 1:x
  for j = 1:y
    img2(i,j) = (img(i,j)/N)*N;
  endfor
endfor
figure 2
imshow(img2);



