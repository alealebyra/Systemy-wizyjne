clear all;
close all;
ksztalty=imread('ksztaltyReal.bmp');
figure(1);
subplot(1,2,1);
imshow(ksztalty);
bin=im2bw(ksztalty,67/255);
bin = 1-bin;
subplot(1,2,2);
imshow(bin);
osiem=bwlabel(bin,8);
figure(1);
[X]=obliczWspolczynniki(osiem);
imshow(osiem,[]);
r = regionprops(osiem,'Centroid');
for i=1:length(r)
    text(r(i).Centroid(1),r(i).Centroid(2),['\color{magenta}',num2str(i)]);
end

labeled=osiem;
[XX YY]=size(osiem);
for i=2:(XX-1)
    for j=2:(YY-1)
        if(labeled(i,j)~=0)
            piksel = labeled(i,j);
            if piksel ~= 0 && ~(X(piksel,2) < 0.50 && X(piksel,2) > 0.45)
               labeled(i,j) = 0;
            end
        end
    end
end
figure(2);
imshow(labeled,[]);