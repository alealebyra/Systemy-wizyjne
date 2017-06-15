clear all;
close all;
A=imread('kolo.bmp');
B=imread('kwadrat.bmp');
A=boolean(A);
B=boolean(B);

figure(1);
subplot(1,2,1);
imshow(A);
subplot(1,2,2);
imshow(B);

notA=~A;
notB=~B;
and=A&B;
or=A|B;
ksor=xor(A,B);

figure(2);
subplot(2,3,1);
imshow(notA);
subplot(2,3,2);
imshow(notB);
subplot(2,3,3);
imshow(and);
subplot(2,3,4)
imshow(or);
subplot(2,3,5);
imshow(ksor);