clear all;
close all;

parasol=imread('umbrealla.png');
figure(1);
imshow(parasol);
hsv=rgb2hsv(parasol);
h=double(hsv(:,:,1));
figure(2);
imshow(hsv);

global segRes;
global segRes2;
global index;
global prog;
global minimum;

segRes=ones(256);
index=1;
prog=0.02;
minimum=3;

split(h,1,1,256,256);


figure(3);
imshow(segRes,[]);

figure(4);
imshow(segRes2,[]);

%8

for i=1:index
    IB = segRes == i;
    if(~any(IB))
        continue
    end
    IBDilate = imdilate(IB,strel('square',3));
    IBDiff=IBDilate-IB;
    IBMult=IBDiff.*segRes;
    IBMultNZ=nonzeros(IBMult);
    IBUnique=unique(IBMultNZ);
  
  
  for n= 1:size(IBUnique)
IBS = segRes == IBUnique(n);

[x,y] =find(IB,1,'first');
[x1,y1] = find(IBS,1,'first');
if(abs(segRes2(x,y) - segRes2(x1,y1))<prog)
    segRes(IBS) = i;
end
end
end
figure(5)
imshow(label2rgb(segRes),[])

% 15

unv = unique(segRes);

licznik = 0;
for i = 1:size(unv)
   IM = segRes == unv(i);
   suma = sum(IM);
   segRes(IM) = licznik;
   licznik = licznik + 1;
   if (suma <minimum)
   segRes=segRes.*~IM;
   end        
end

figure(6)
imshow(label2rgb(segRes),[])

    

