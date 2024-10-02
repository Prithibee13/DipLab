img = imread('original.jpg');
 
ref = imread('ref.jpg');
imgr = img(:,:,1);
imgg = img(:,:,2);
imgb = img(:,:,3);

refr = ref(:,:,1);
refg = ref(:,:,2);
refb = ref(:,:,3);

histref = imhist(refr);
histrefr = imhist(refr);
histrefg = imhist(refg);
histrefb = imhist(refb);

outr = histeq(imgr, histrefr);
outg = histeq(imgg, histrefg);
outb = histeq(imgb, histrefb);

histep(:,:,1) = outr;
histep(:,:,2) = outg;
histep(:,:,3) = outb;

figure;
subplot(221), imshow(ref), title("Reference Image");
subplot(222), imshow(img), title("Input Image");
subplot(224), imshow(img), title("Input Image");
subplot(224), imshow(histep), title("Output Image");

figure;
histimgr = imhist(imgr);
histimgb = imhist(imgb);
histimgg = imhist(imgg);

subplot(331) , plot(histimgr), title("Red input");
subplot(334) , plot(histimgg), title("Green input");
subplot(337) , plot(histimgb), title("Blue input");
subplot(332) , plot(histrefr), title("Red ref");
subplot(335) , plot(histrefg), title("Green ref");
subplot(338) , plot(histrefb), title("Blue ref");
subplot(333) , imhist(outr), title("Red result");
subplot(336) , imhist(outg), title("Green result");
subplot(339) , imhist(outb), title("Blue result");