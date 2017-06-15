clear all;
close all;

%1
A=imread('jet.bmp');
load maskiPP;
A_conv=conv2(A, R1, 'same');
A_conv=uint8(A_conv);
A_128=A_conv+128;
A_abs=abs(A_conv);

A2_conv=conv2(A, R2, 'same');
A2_conv=uint8(A2_conv);
A2_128=A2_conv+128;
A2_abs=abs(A2_conv);

figure(1);
subplot(2,3,1);
imshow(A);
subplot(2,3,2);
imshow(A_128,[]);
subplot(2,3,3);
imshow(A_abs,[]);
subplot(2,3,4);
imshow(A);
subplot(2,3,5);
imshow(A2_128,[]);
subplot(2,3,6);
imshow(A2_abs,[]);

%2
A_conv=conv2(A, P1, 'same');
A_conv=uint8(A_conv);
A_128=A_conv+128;
A_abs=abs(A_conv);

A2_conv=conv2(A, P2, 'same');
A2_conv=uint8(A2_conv);
A2_128=A2_conv+128;
A2_abs=abs(A2_conv);

figure(2);
subplot(2,3,1);
imshow(A);
subplot(2,3,2);
imshow(A_128,[]);
subplot(2,3,3);
imshow(A_abs,[]);
subplot(2,3,4);
imshow(A);
subplot(2,3,5);
imshow(A2_128,[]);
subplot(2,3,6);
imshow(A2_abs,[]);

%3
A_con=conv2(A, S1, 'same');
A_conv=uint8(A_con);
A_128=A_conv+128;
A_abs=abs(A_conv);

A2_con=conv2(A, S2, 'same');
A2_conv=uint8(A2_con);
A2_128=A2_conv+128;
A2_abs=abs(A2_conv);

figure(3);
subplot(2,3,1);
imshow(A);
subplot(2,3,2);
imshow(A_128,[]);
subplot(2,3,3);
imshow(A_abs,[]);
subplot(2,3,4);
imshow(A);
subplot(2,3,5);
imshow(A2_128,[]);
subplot(2,3,6);
imshow(A2_abs,[]);

%kombinowane
kom=sqrt(A_con.^2 + A2_con.^2);
kom=uint8(kom);

figure(4)
subplot(2,2,1);
imshow(A, []);
subplot(2,2,2);
imshow(kom, []);

komb_abs = abs(A_con) + abs(A2_con);
komb_abs = uint8(komb_abs);
subplot(2,2,3);
imshow(A, []);

subplot(2,2,4);
imshow(komb_abs, []);