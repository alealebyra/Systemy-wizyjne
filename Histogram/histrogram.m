clear all;
close all;
A=imread('lena1.bmp');
B=imread('lena2.bmp');
C=imread('lena3.bmp');
D=imread('lena4.bmp');

figure(1);
subplot(2,4,1);
imshow(A);
subplot(2,4,2);
imshow(B);
subplot(2,4,3);
imshow(C);
subplot(2,4,4);
imshow(D);
subplot(2,4,5);
imhist(A);
subplot(2,4,6);
imhist(B);
subplot(2,4,7);
imhist(C);
subplot(2,4,8);
imhist(D);

E=imread('hist1.bmp');
figure(2);
subplot(1,2,1);
imshow(E);
subplot(1,2,2);
imhist(E);

figure(3);
F=imadjust(E);
subplot(1,2,1);
imshow(F);
subplot(1,2,2);
imhist(F);

figure(4);
[H,x]=imhist(E, 256);
CU=cumsum(H);
MH=max(H);
MC=max(CU);
k=MC/MH;
CU2=CU/k;
hold on;
plot(x,H);
plot(x,CU2);

figure(5);
[H2,x2]=imhist(F, 256);
CU3=cumsum(H2);
MH=max(H2);
MC=max(CU3);
k=MC/MH;
CU4=CU3/k;
hold on;
plot(x,H2);
plot(x,CU4);

figure(6);
C3=CU2/max(CU2)*256;
C3=uint8(C3);
L=intlut(E,C3);
subplot(1,2,1);
imshow(L);

subplot(1,2,2);
[H6,x]=imhist(L, 256);
CU5=cumsum(H6);
MH=max(H6);
MC=max(CU5);
k=MC/MH;
CU6=CU5/k;
hold on;
plot(x,H6);
plot(x,CU6);

figure(7);
HI=histeq(E,256);
subplot(1,2,1);
imshow(HI);
subplot(1,2,2);
[Q,x]=imhist(HI, 256);
SUM=cumsum(Q);
MH=max(Q);
MC=max(SUM);
k=MC/MH;
SUM2=SUM/k;
hold on;
plot(x,Q);
plot(x,SUM2);

O2=imread('hist2.bmp');
O3=imread('hist3.bmp');
O4=imread('hist4.bmp');

OA2=imadjust(O2);
OA3=imadjust(O3);
OA4=imadjust(O4);

OH2=histeq(O2,256);
OH3=histeq(O3,256);
OH4=histeq(O4,256);

AD2=adapthisteq(O2);
AD3=adapthisteq(O3);
AD4=adapthisteq(O4);

figure(8);
subplot(2,2,1);
imhist(O2);
subplot(2,2,2);
imhist(OA2);
subplot(2,2,3);
imhist(OH2);
subplot(2,2,4);
imhist(AD2);

figure(9);
subplot(2,2,1);
imhist(O3);
subplot(2,2,2);
imhist(OA3);
subplot(2,2,3);
imhist(OH3);
subplot(2,2,4);
imhist(AD3);

figure(10);
subplot(2,2,1);
imhist(O4);
subplot(2,2,2);
imhist(OA4);
subplot(2,2,3);
imhist(OH4);
subplot(2,2,4);
imhist(AD4);
