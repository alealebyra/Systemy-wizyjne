clear all;
close all;
A=imread('lena.bmp');
B=imread('jet.bmp');

imshow(A);
figure(2);
imshow(B);

sum=imadd(A,B,'uint16');
figure(3);
imshow(sum, []);

C=imlincomb(0.5, A, 1, B);
figure(4);
imshow(C);

A16=int16(A);
B16=int16(B);
roznica=imsubtract(A16,B16);
figure(5);
imshow(roznica, []);

bezw=imabsdiff(A,B);
figure(6);
imshow(bezw);

iloczyn=immultiply(A16,B16);
figure(7);
imshow(iloczyn,[]);

stala=immultiply(A16, 100);
figure(8);
subplot(1,2,1);
imshow(stala,[]);

K=imread('kolo.bmp');
K=boolean(K);

maska=immultiply(A16, K);
subplot(1,2,2);
imshow(maska,[]);

I=imcomplement(A);
figure(9);
imshow(I);


