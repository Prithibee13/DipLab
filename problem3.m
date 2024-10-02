b = imread('cameraman.tif');
b1 = flipdim(b,2);
subplot(2,2,1), imshow(b), title("original image");
subplot(2,2,2), imshow(b1), title("Mirror image");
