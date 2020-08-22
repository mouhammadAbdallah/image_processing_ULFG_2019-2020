close all;
clear all;

img=imread('text.png');
%to transform to binary img img = im2bw(img,0.6);0.6 is the threashold

img=im2double(img);%to transform to double img
figure(1);
imshow(img);

% 20% noise
img_noise= imnoise(img,'salt & pepper',0.02);%img must be double or unit8
figure(2); 
imshow(img_noise);

%structure element
se=strel('rectangle',[ 2 2 ]) ;

%erosion
img_after_erosion=imerode(img_noise,se);
figure(3)
imshow(img_after_erosion);

%dilatation after erosion
img_after_ero_dila=imdilate(img_after_erosion,se);
figure(4)
imshow(img_after_ero_dila);