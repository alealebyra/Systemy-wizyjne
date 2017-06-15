close all
clear all

A=imread('lena100.bmp')
B=imresize(A, [200 200], 'nearest')
figure(1)
imshow(A)
figure(2)
imshow(B)

C=imresize(A, [200 200], 'bilinear')
figure(3)
imshow(C)

D=imresize(A, [200 200], 'bicubic')
figure(4)
imshow(D)

E=imread('szachownica.bmp')
figure(5)
imshow(E)

F=imresize(E, [160 160], 'nearest')
figure(6)
imshow(F)

G=imresize(E, [160 160], 'bilinear')
figure(7)
imshow(G)

H=imresize(E, [160 160], 'bicubic')
figure(8)
imshow(H)

I=imresize(F, [100 100], 'nearest')
figure(9)
imshow(I)

J=imresize(G, [100 100], 'bilinear')
figure(10)
imshow(J)

K=imresize(H, [100 100], 'bicubic')
figure(11)
imshow(K)
