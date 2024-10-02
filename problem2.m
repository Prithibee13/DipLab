 b = imread('cameraman.tif');
bd = double(b);
b0=mod(bd,2);
b1= mod(floor(bd/2),2);
b2= mod(floor(bd/4),2);
b3= mod(floor(bd/8),2);
b4= mod(floor(bd/16),2);
b5= mod(floor(bd/32),2);
b6= mod(floor(bd/64),2);
b7= mod(floor(bd/128),2);
subplot(4,4,1), imshow(b0), title('0th plane');
subplot(4,4,2), imshow(b1), title('1st plane');
subplot(4,4,3), imshow(b2), title('2nd plane');
subplot(4,4,4), imshow(b3), title('3rd plane');
subplot(4,4,5), imshow(b4), title('4th plane');
subplot(4,4,6), imshow(b5), title('5th plane');
subplot(4,4,7), imshow(b6), title('6th plane');
subplot(4,4,8), imshow(b7), title('7th plane');
cc = 