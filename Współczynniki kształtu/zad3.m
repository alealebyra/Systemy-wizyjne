clear all;
close all;

ksztalt=imread('ksztaltyReal.bmp');
figure(1);
imshow(ksztalt);

obraz=im2bw(ksztalt, 67/255);
figure(2);
obraz=1-obraz;
imshow(obraz);


%
figure(3);
obraz8=bwlabel(obraz,8);
subplot(1,2,1);
imshow(obraz8, []);

wspolcz=obliczWspolczynniki(obraz8);

r = regionprops(obraz8,'Centroid');
for i=1:length(r)
    text(r(i).Centroid(1),r(i).Centroid(2),['\color{magenta}',num2str(i)]);
end

[XX YY]=size(obraz8);
for i=2:XX-1
          for j=2:YY-1
                piksel = obraz8(i,j);
                if piksel ~= 0 && ~(wspolcz(piksel,3) > 4.82 && wspolcz(piksel,3) < 5.07)
                    obraz8(i,j) = 0;
                end
          end
end

subplot(1,2,2);
imshow(obraz8,[]);