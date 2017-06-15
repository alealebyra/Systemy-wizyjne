function split(img , left, right)
global segRes
global segRes2 ;
global level;
global minimum ;
global index ;
img2 = img(left(1):right(1),left(2):right(2));
img3 = img2(:);

mean1 =mean(img3);
std1 = std(img3);
imgsize = size(img2);

if((mean1 >  level) && (imgsize(1) > minimum))
 punkt = round(imgsize(1)/2);
    split(img,left,[right(1)-punkt,right(2)-punkt]);
    split(img,[left(1),left(2)+punkt],[right(1)-punkt,right(2)]);
    split(img,[left(1)+punkt,left(2)],[right(1),right(2)-punkt]);
    split(img,[left(1)+punkt,left(2)+punkt],right);
else 
    index = index+1 ;
    segRes(left(1):right(1),left(2):right(2)) = index;
    segRes2(left(1):right(1),left(2):right(2)) = mean1;
    
end








