close all;
clear all;

A=imread('moon.bmp');
M=[0 1 0;1 -4 1;0 1 0];
M=M/9;
C=conv2(A,M,'same');
CS=C+128;
CM=abs(C);
figure(1);
subplot(1,3,1);
imshow(A);
subplot(1,3,2);
imshow(CS,[]);
subplot(1,3,3);
imshow(CM,[]);

L=fspecial('laplacian');
CL=conv2(A,L,'same');
CL=uint8(CL);
S=imadd(CL,A);
R=imsubtract(CL,A);

figure(2);
subplot(2,2,1);
imshow(A);
subplot(2,2,2);
imshow(CL);
subplot(2,2,3);
imshow(S,[]);
subplot(2,2,4);
imshow(R,[]);

D=imread('dipxe.jpg');
G=fspecial('gaussian',5);
M=conv2(D,G,'same');
M=uint8(M);
R=D-M;
nowy=D+4.5*R;
figure(3);
subplot(2,2,1);
imshow(D,[]);
subplot(2,2,2);
imshow(M,[]);
subplot(2,2,3);
imshow(R,[]);
subplot(2,2,4);
imshow(nowy,[]);
