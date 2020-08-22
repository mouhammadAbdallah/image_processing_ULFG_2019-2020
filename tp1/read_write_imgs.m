close all
clear all

%binary image
bimg=imread('circles.png');
figure(1);
imshow(bimg);
whos bimg

%gray image
gimg=imread('pout.tif');
figure(2);
imshow(gimg);
whos gimg

%color image with lut
[colimg,lut]=imread('trees.tif');
figure(3);
imshow(colimg,lut);
colorbar;
whos colimg

%changing colormap of an imgae
newmap=lut/3;
figure(4);
imshow(colimg,lut);
colormap(newmap);% or imshow(colimg,newmap);



%3d color image
d3colimg=imread('autumn.tif');
figure(5);
imshow(d3colimg);
whos d3colimg

%3d image to gray
imggray=rgb2gray(d3colimg);
figure(6);
imshow(imggray);
imsave


