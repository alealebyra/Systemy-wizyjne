close all;
clear all;

A=imread('coins.png');
figure(1);
subplot(3,1,1);
imshow(A);
subplot(3,1,2);
imhist(A);

B=im2bw(A, 80/255);
subplot(3,1,3);
imshow(B);

F=imread('figura.tif');
figure(2);
subplot(3,1,1);
imshow(F);
subplot(3,1,2);
imhist(F);

FB=im2bw(F, 100/255);
subplot(3,1,3);
imshow(FB);

F2=imread('figura2.tif');
figure(3);
subplot(3,1,1);
imshow(F2);
subplot(3,1,2);
imhist(F2);

FB2=im2bw(F2, 131/255);
subplot(3,1,3);
imshow(FB2);

F3=imread('figura3.tif');
figure(4);
subplot(3,1,1);
imshow(F3);
subplot(3,1,2);
imhist(F3);

FB3=im2bw(F3, 150/255);
subplot(3,1,3);
imshow(FB3);

F4=imread('figura4.tif');
figure(5);
subplot(3,1,1);
imshow(F4);
subplot(3,1,2);
imhist(F4);

FB4=im2bw(F4, 58/255);
subplot(3,1,3);
imshow(FB4);

%Ots'u Kittler Yen
figure(6);
subplot(3,2,1);
imshow(A);

subplot(3,2,2);
imhist(A);

B=im2bw(A, 80/255);
subplot(3,2,3);
imshow(B);

G=im2bw(A, graythresh(A));
subplot(3,2,4);
imshow(G);

subplot(3,2,5);
C=im2bw(A, clusterKittler(A)/255);
imshow(C);

D=im2bw(A, entropyYen(A)/255);
subplot(3,2,6);
imshow(D);

%Inne obrazeczki

A=imread('rice.png');
figure(7);
subplot(3,2,1);
imshow(A);
title('Orginalny');

subplot(3,2,2);
imhist(A);
title('Histogram');

B=im2bw(A, 130/255);
subplot(3,2,3);
imshow(B);
title(['Binaryzacja mój próg', num2str(130)]);

G=im2bw(A, graythresh(A));
subplot(3,2,4);
imshow(G);
title(['Binaryzacja Otsu', num2str(graythresh(A)*255)]);

subplot(3,2,5);
C=im2bw(A, clusterKittler(A)/255);
imshow(C);
title(['Binaryzacja Kittlera', num2str(clusterKittler(A))]);

D=im2bw(A, entropyYen(A)/255);
subplot(3,2,6);
imshow(D);
title(['Binaryzacja Yen', num2str(entropyYen(A))]);

A=imread('tekst.bmp');
figure(8);
subplot(3,2,1);
imshow(A);
title('Orginalny');

subplot(3,2,2);
imhist(A);
title('Histogram');

B=im2bw(A, 168/255);
subplot(3,2,3);
imshow(B);
title(['Binaryzacja mój próg', num2str(168)]);

G=im2bw(A, graythresh(A));
subplot(3,2,4);
imshow(G);
title(['Binaryzacja Otsu', num2str(graythresh(A)*255)]);

subplot(3,2,5);
C=im2bw(A, clusterKittler(A)/255);
imshow(C);
title(['Binaryzacja Kittlera', num2str(clusterKittler(A))]);

D=im2bw(A, entropyYen(A)/255);
subplot(3,2,6);
imshow(D);
title(['Binaryzacja Yen', num2str(entropyYen(A))]);


A=imread('obiekty.bmp');
figure(9);
subplot(3,2,1);
imshow(A);
title('Orginalny');

subplot(3,2,2);
imhist(A);
title('Histogram');

B=im2bw(A, 178/255);
subplot(3,2,3);
imshow(B);
title(['Binaryzacja mój próg', num2str(130)]);

G=im2bw(A, graythresh(A));
subplot(3,2,4);
imshow(G);
title(['Binaryzacja Otsu', num2str(graythresh(A)*255)]);

subplot(3,2,5);
C=im2bw(A, clusterKittler(A)/255);
imshow(C);
title(['Binaryzacja Kittlera', num2str(clusterKittler(A))]);

D=im2bw(A, entropyYen(A)/255);
subplot(3,2,6);
imshow(D);
title(['Binaryzacja Yen', num2str(entropyYen(A))]);


A=imread('katalog.bmp');
figure(10);
subplot(3,2,1);
imshow(A);
title('Orginalny');

subplot(3,2,2);
imhist(A);
title('Histogram');

B=im2bw(A, 140/255);
subplot(3,2,3);
imshow(B);
title(['Binaryzacja mój próg', num2str(130)]);

G=im2bw(A, graythresh(A));
subplot(3,2,4);
imshow(G);
title(['Binaryzacja Otsu', num2str(graythresh(A)*255)]);

subplot(3,2,5);
C=im2bw(A, clusterKittler(A)/255);
imshow(C);
title(['Binaryzacja Kittlera', num2str(clusterKittler(A))]);

D=im2bw(A, entropyYen(A)/255);
subplot(3,2,6);
imshow(D);
title(['Binaryzacja Yen', num2str(entropyYen(A))]);

