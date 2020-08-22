close all
clear all

%real image
img=imread('cameraman.tif');
figure(1);
imshow(img);
whos img

%translation
tx=50;
ty=50;
T=[1 0 0;0 1 0;tx ty 1];
trans=maketform('affine',T);
figure(2);
imgt=imtransform(img,trans,'XData',[1 size(img,2)],'YData',[1 size(img,1)]);
imshow(imgt);

%scale
sx=1.5;
sy=1.5;
T=[sx 0 0;0 sx 0;0 0 1];
scale=maketform('affine',T);
figure(3);
imgs=imtransform(img,scale);
imshow(imgs);
whos imgs

%shear
shx=0.1;
shy=0;
T=[1 shy 0;shx 1 0;0 0 1];
shear=maketform('affine',T);
figure(4);
imgsh=imtransform(img,shear);
imshow(imgsh);
whos imgsh

%rotation
angled=45;
angler=45*pi/180;
T=[cos(angler) sin(angler) 0;-sin(angler) cos(angler) 0;0 0 1];
rot=maketform('affine',T);
figure(5);
imgr=imtransform(img,rot);
imshow(imgr);
whos imgr