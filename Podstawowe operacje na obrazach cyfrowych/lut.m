clear all;
close all;
load funkcjeLUT;
figure(1);
plot(kwadratowa);
A=imread('jet.bmp');
B=intlut(A, kwadratowa);

figure(2);
subplot(2,1,1);
imshow(A);
subplot(2,1,2);
imshow(B);

figure(3);
luciki(A,kwadratowa);
figure(4);
luciki(A, log);
figure(5);
luciki(A, odwlog);
figure(6);
luciki(A, odwrotna);
figure(7);
luciki(A, pierwiastkowa);
figure(8);
luciki(A, pila);
figure(9);
luciki(A, wykladnicza);


