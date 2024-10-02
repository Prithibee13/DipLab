[a,amap] = imread('canoe.tif');

agray = ind2gray(a,amap);

figure, imshow(a);
title('indexed image');
argb = ind2rgb(a,amap);
figure , imshow(argb);
title("Converted RGB image");

figure , imshow(agray);
title("Converted Grayscale image");

ad = double(argb)/255;
R = ad(:,:,1);
G = ad(:,:,2);
B = ad(:,:,3);
HSV = rgb2hsv(argb);
H = HSV(:,:,1);
S = HSV(:,:,2);
I = sum(ad,3)./3;
HSI = zeros(size(argb));
HSI(:,:,1) = H;
HSI(:,:,2) = S;
HSI(:,:,3) = I;
figure, imshow(argb);
title("indexed to RGB image");
figure, imshow(HSI);
title("indexed to HSI image");

subplot(2,2,1), imshow(a), title("indexed image");
subplot(2,2,2), imshow(agray), title("converted gray image");
subplot(2,2,3), imshow(argb), title("converted RGB image");
subplot(2,2,2), imshow(agray), title("converted Grayscale image");
subplot(2,2,4), imshow(HSI), title("converted HSI image");