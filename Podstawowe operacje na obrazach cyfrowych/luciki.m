function luciki(obraz, przekodowanie) 

B=intlut(obraz, przekodowanie);

subplot(2,2,1:2);
title('Przekodowanie');
plot(przekodowanie);
subplot(2,2,3);
title('Obraz oryginalny');
imshow(obraz);
subplot(2,2,4);
title('Obraz przekszatlcony');
imshow(B);

end
