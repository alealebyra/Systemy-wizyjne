close all;
clear all;

A=imread('rice.png');
[X Y]=size(A);
ABW=A;

for i=1:X
    for j=1:Y
      prog=meanLT(i,j,8,A,X,Y);
      if ABW(i,j)>=prog
          ABW(i,j)=255;
      else
          ABW(i,j)=0;
      end
    end
end

figure(1);
subplot(2,1,1)
imshow(A);
subplot(2,1,2);
imshow(ABW);

B=imread('katalog.bmp');
[XX YY]=size(B);
BBW=B;

for i=1:XX
    for j=1:YY
      prog=meanLT(i,j,8,B,XX,YY);
      if BBW(i,j)>=prog
          BBW(i,j)=255;
      else
          BBW(i,j)=0;
      end
    end
end

figure(2);
subplot(2,1,1)
imshow(B);
subplot(2,1,2);
imshow(BBW);




AS=A;
for i=1:X
    for j=1:Y
      m=meanLT(i,j,8,A,X,Y);
      std=stddevLT(i,j,8,A,m,X,Y);
      prog=m*[1+0.15*((std/128)-1)];
      if AS(i,j)>=prog
          AS(i,j)=255;
      else
          AS(i,j)=0;
      end
    end
end

figure(3);
subplot(2,1,1)
imshow(A);
subplot(2,1,2);
imshow(AS);

BS=B;
for i=1:X
    for j=1:Y
      m=meanLT(i,j,8,B,X,Y);
      std=stddevLT(i,j,8,B,m,X,Y);
      prog=m*[1+0.15*((std/128)-1)];
      if BS(i,j)>=prog
          BS(i,j)=255;
      else
          BS(i,j)=0;
      end
    end
end

figure(4);
subplot(2,1,1)
imshow(B);
subplot(2,1,2);
imshow(BS);

BS=B;
for i=1:X
    for j=1:Y
      m=meanLT(i,j,8,B,X,Y);
      std=stddevLT(i,j,8,B,m,X,Y);
      prog=m*[1-0.15*((std/128)-1)];
      if BS(i,j)>=prog
          BS(i,j)=255;
      else
          BS(i,j)=0;
      end
    end
end

figure(5);
subplot(2,1,1)
imshow(B);
subplot(2,1,2);
imshow(BS);
