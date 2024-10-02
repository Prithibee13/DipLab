a = imread('pepper.png');
figure, imshow(a);
title('original image');
Af = fft(a);
figure, imshow(Af);
title('FFT of image');
