close all
clear all

%binary image
mybinaryImage=round(rand(512));
figure(1);
imshow(mybinaryImage);

%gray image
mygrayimage=round(rand(512));%mygrayimage=uint8(round(255*rand(512)));
figure(2);
imshow(mygrayimage);

%color image with LUT
mycolorimage=round(1+99*rand(512));
lut=rand(100,3);
figure(3);
imshow(mycolorimage,lut);

%3d color image
my3dcolorimage=rand(512,512,3);
figure(4);
imshow(my3dcolorimage);