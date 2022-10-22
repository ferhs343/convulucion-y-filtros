clc
close all
clear all

img = imread('imagem.jpg');
figure(1)
imshow(img)

%%AGREGAR RUIDO
img_ruido = imnoise(img, 'speckle', 0.05); %%specke --> salpicado de semen
figure(2)
imshow(img_ruido)

%%ELIMINAR RUIDO CON FILTRADO
filt_25 = fspecial('average', 5); %%promedio de 25
filt_gauss_25 = fspecial('gaussian', 5, 0.8); %%gausiano de 25

img_filt_1 = imfilter(img_ruido, filt_25)
img_filt_2 = imfilter(img_ruido, filt_gauss_25)

figure(3)
imshow(img_filt_1)
figure(4)
imshow(img_filt_2)

