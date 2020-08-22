close all;
clear all;

%create image 
img=imread('spine.tif');
figure(1);
imshow(img);
figure(2);
imshow(img,[]);

%tf
imgf=fftshift(fft2(img));
figure(3);
imshow(abs(imgf),[]);
figure(4);
mesh(abs(imgf));

%tf inverse
imgr=uint8(abs(ifft2(imgf)));
figure(5);
imshow(imgr);
figure(6);
mesh(imgr);

