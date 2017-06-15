close all;
clear all;
 

img = imread('umbrealla.png');

imshow(img);

himg = rgb2hsv(img);

himg2 = himg(:,:,1);
imshow(himg2);

global segRes
segRes = ones(256,256);

global segRes2 ;
segRes2 = ones(256,256);

%%%%%%%%%%%%%%%%%%
global level;
level= 0.02;

global minimum 
minimum = 3;

global index 
index =0;

split(himg,[1,1],[256,256]);
figure(3)
imshow(segRes,[]);

figure(4)

imshow(segRes2);

%%%%%%%%%%%%%% 8
for m= 1:index
IB = segRes == m;
if(~any(IB))
    continue
end
IBDilate = imdilate(IB,strel('square',3));
IBDiff = IBDilate - IB;

IBMult = IBDiff.*segRes; 
IBMultNZ = nonzeros(IBMult);

IBUnique = unique(IBMultNZ);
%%%%%%%%%%%%%9

for n= 1:size(IBUnique)
IBS = segRes == IBUnique(n);

[x,y] =find(IB,1,'first');
[x1,y1] = find(IBS,1,'first');
if(abs(segRes2(x,y) - segRes2(x1,y1))<0.02)
    segRes(IBS) = m;
end
end
end
figure(5)
imshow(label2rgb(segRes),[])

%%%%%%%%%%%% 15

unv = unique(segRes);

licznik = 0;
for i = 1:size(unv)
   IM = segRes == unv(i);
   suma = sum(IM);
   segRes(IM) = licznik;
   licznik = licznik + 1;
   if (suma <5)
   segRes=segRes.*~IM;
   end        
end

figure(6)
imshow(label2rgb(segRes),[])
