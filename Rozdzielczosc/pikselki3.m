close all
clear all

A=imread('lena.bmp')

B=imresize(A, [128 128])
figure(1)
subplot(2,3,1)
imshow(B)
C=imadjust(B, [0;1], [0;31/255])
D=imadjust(B, [0;1], [0;15/255])
E=imadjust(B, [0;1], [0;7/255])
F=imadjust(B, [0;1], [0;3/255])
G=imadjust(B, [0;1], [0;1/255])

subplot(2,3,2)
imshow(C,[])

subplot(2,3,3)
imshow(D,[])

subplot(2,3,4)
imshow(E,[])

subplot(2,3,5)
imshow(F,[])

subplot(2,3,6)
imshow(G,[])

