clear all;
close all;

obraz=imread('indeks2.bmp');
figure(1);
subplot(1,3,1);
imshow(obraz);

obraz4=bwlabel(obraz,4);
obraz8=bwlabel(obraz,8);

subplot(1,3,2);
imshow(obraz4, []);
subplot(1,3,3);
imshow(obraz8, []);

%wspolczynniki ksztaltu
obraz=imread('ksztalty.bmp');
figure(2);
subplot(1,3,1);
imshow(obraz);

obraz8=bwlabel(obraz,8);
subplot(1,3,2);
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
                if piksel ~= 0 && ~(wspolcz(piksel,5) > 0.0064 && wspolcz(piksel,5) < 0.0071)
                    obraz8(i,j) = 0;
                end
          end
end

subplot(1,3,3);
imshow(obraz8,[]);
