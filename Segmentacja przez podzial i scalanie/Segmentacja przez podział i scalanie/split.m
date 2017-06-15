function [odcien, odchyl]=split(obraz, LX, LY, PX, PY)

global segRes;
global segRes2;
global index;
global prog;
global minimum;

macierz=obraz(LX:PX,LY:PY);
wektor=macierz(:);
odcien=mean(wektor);
odchyl=std(wektor);

srodekx=round((LX+PX)/2);
srodeky=round((LY+PY)/2);

if( odchyl>prog && abs(PX-LX)>minimum && abs(PY-LY)>minimum)
   split(obraz, LX, LY, srodekx, srodeky);
   split(obraz, srodekx, LY, PX, srodeky);
   split(obraz, LX, srodeky, srodekx, PY);
   split(obraz, srodekx, srodeky, PX, PY);
else
    index=index+1;
    segRes(LX:PX,LY:PY) = index;
    segRes2(LX:PX,LY:PY)=odcien;
end

end
