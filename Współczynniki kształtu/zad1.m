close all;
clear all;

obraz=imread('indeks1.bmp');
figure(1);
imshow(obraz);

[XX YY]=size(obraz);

L=1;
tabSkl=zeros(1,256);

for x=2:XX-1
    for y=2:YY-1
        if(obraz(x,y)>0)
            sasiedzi= [obraz(x-1,y-1) obraz(x-1,y) obraz(x-1,y+1) obraz(x,y-1)];
            suma=sum(sasiedzi);
            if(suma==0)
                obraz(x,y)=L;
                tabSkl(L)=L;
                L=L+1;
                
            end
            if(suma>0)
                sasiedzibez0=nonzeros(sasiedzi);
                minim=min(sasiedzibez0);
                maksim=max(sasiedzibez0);
                obraz(x,y)=minim;
                tabSkl(maksim)=minim;
            end
        end
    end
end

for i=2:L
    if(tabSkl(i)~=i)
        for x=2:XX-1
            for y=2:YY-1
                if(obraz(x,y)==i)
                    obraz(x,y)=tabSkl(i);
                end
            end
        end
    end
end
    


figure(2)
subplot(1,2,1)
imshow(obraz,[]);
subplot(1,2,2);
wynik=imread('indeksWynik1.bmp');
imshow(wynik);
            
