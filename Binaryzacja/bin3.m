close all;
clear all;


obraz=imread('bart.bmp');
obrazBW = obraz > 190 & obraz < 210;


figure(1);
subplot(3,1,1);
imshow(obraz);
subplot(3,1,2);
imhist(obraz);
subplot(3,1,3);
imshow(obrazBW);