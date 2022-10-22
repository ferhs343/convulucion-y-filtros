clc
close all
clear all

img = imread('imagem.jpg');
figure(1)
imshow(img)

%%FILTROS SHARPENNING
sharpen_1 = [1 -2 1;-2 5 -2;1 -2 1];
sharpen_2 = [-1 -1 -1;-1 9 -1;-1 -1 -1];
sharpen_3 = [0 -1 0;-1 5 -1;0 -1 0];
repujado = [-2 -1 0;-1 1 1;0 1 2];

img_filt_sharp = imfilter(img, repujado);
figure(2)
imshow(img_filt_sharp)

