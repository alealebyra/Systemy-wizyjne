close all
clear all

A=imread('lena.bmp')
figure(1)
imshow(A)

B=imresize(A, [256 256])
figure(2)
imshow(B, 'InitialMagnification', 200)
C=imresize(A, [128 128])
figure(3)
imshow(C, 'InitialMagnification', 400)
D=imresize(A, [64 64])
figure(4)
imshow(D, 'InitialMagnification', 800)