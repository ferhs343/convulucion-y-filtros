clear all
close all
clc

img = imread('imagem.jpg');
figure(1)
imshow(img)

%%FILTROS DE PROMEDIO

%%CREAR KERNEL
kernel_9 = [1/9 1/9 1/9;
            1/9 1/9 1/9;
            1/9 1/9 1/9]; %%kernel de promedio de 9 puntos (3x3) --> toma los 8 vecinos mas cercanos

img_filt_9 = imfilter(img, kernel_9);
filt_25 = fspecial('average',10) %%filtro promedio de 25 puntos (5x5), por defecto cada uno vale 1/25 (double)
img_filt_25 = imfilter(img, filt_25)

figure(2)
imshow(img_filt_25)

%%FILTROS GAUSIANOS
filt_gauss_5 = fspecial('gaussian', 5, 0.5); %%filtro gaussiano de 5x5, el valor sigma (desviacion estandar) influye en los valores de los pixeles (default --> 0.5)
img_filt_gauss = imfilter(img, filt_gauss_5)
figure(3)
imshow(img_filt_gauss)




