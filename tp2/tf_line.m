close all;
clear all;

%create the image
N=512;
img=zeros(512);
img(250:260,1:512)=1;
figure(1);
imshow(img);

%tf de l'image
imgf=fft2(img);
figure(2);
imshow(abs(imgf));
figure(3);
mesh(abs(imgf));

%tf centre de l'image
imgf=fftshift(imgf);
figure(4);
imshow(abs(imgf),[]);
figure(5);
mesh(abs(imgf));

