
a = imread("pepper.png");
sel = strel('disk',l1);
Unrecognized function or variable 'l1'.
 
sel = strel('disk',11);
er = imerode(a,sel);
figure, imshow(I);
Unrecognized function or variable 'I'.
 
figure, imshow(a);
figure, imshow(a);
title('original image');
figure, imshow(er);
title('image after erode');
sel2 = strel('ball',5,5);
di = imdilate(a,sel2);
figure, imshow(di);
er = imerode(a,sel2);
imshow(er);
sel = strel('disk',15);
open = imopen(a,sel);
imshow(open);
ic = imclose(a,sel);
imshow(ic);