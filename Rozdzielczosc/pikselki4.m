close all;
clear all;
figure(1)
A=imread('lena.bmp');
B=imrotate(A, 90);
subplot(2,2,1);
imshow(B);
C=imrotate(A, 45);
subplot(2,2,2);
imshow(C);
D=imrotate(A, -90);
subplot(2,2,3);
imshow(D);
E=imrotate(A, -45);
subplot(2,2,4);
imshow(E);


F=imread('szachownica.bmp');
G=imrotate(F, -45, 'nearest');
H=imrotate(F, -45, 'bilinear');
I=imrotate(F, -45, 'bicubic');
figure(2);
subplot(3,1,1);
imshow(G);
subplot(3,1,2);
imshow(H);
subplot(3,1,3);
imshow(I);

theta = -45;
tform = affine2d([cosd(theta)/2 -sind(theta)/2 0; sind(theta)/2 cosd(theta)/2 0; 0 0 1]);
figure(3);
J=imwarp(A, tform);
imshow(J);

K=imtranslate(A, [10 25]);
theta=0;
tform = affine2d([cosd(theta) -sind(theta) 0; sind(theta) cosd(theta) 0; 0 0 1])
L=imwarp(A, tform, 'OutputView', imref2d(size(A)));
figure(4);
subplot(2,1,1);
imshow(K);
subplot(2,1,2);
imshow(L);
