clear all;
close all;

obraz=imread('knee.png');
obraz=double(obraz);

figure(1);
imshow(obraz,[]);
[y x]=ginput(1);
x=floor(x);
y=floor(y);

Stos=zeros(1000, 2);
Visit=zeros(size(obraz));
Segm=zeros(size(obraz));

Stos(1, 1)=x;
Stos(1, 2)=y;

Visit(x, y)=1;
Segm(x, y)=1;

[rozmx rozmy]=size(obraz);
n=1; %wskaznik
ilosc=0; %ilosc punktow pobranych ze stodu
m=1; %srednia
while (n>0) %ogarnij dlaczego przejdzie po całym stosie
    x=Stos(n,1);
    y=Stos(n,2);
    ilosc=ilosc+1;
    n=n-1;
    if(x>1 && x<rozmx && y>1 && y<rozmy);
       for i=(x-1):(x+1)
            for j=(y-1):(y+1)
                if(Visit(i,j)==0)
                    m=(m*(ilosc-1)+obraz(i,j))/ilosc;
                    p=abs(obraz(i,j)-m);
                    Visit(i,j)=1;
                    if (p<40)
                        Segm(i,j)=1;
                        n=n+1;
                        Stos(n,1)=i;
                        Stos(n,2)=j;

                    end
                end
            end
       end
    end
end


figure(2);
imshow(Segm);