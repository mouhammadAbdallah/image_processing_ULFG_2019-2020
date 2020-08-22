img=imread('cameraman.tif');
figure(1);
imshow(img);

scale=1.1;
angled=20;
tx=0;
ty=0;

angler=angled*pi/180;
T=[scale*cos(angler) sin(angler) 0;-scale*sin(angler) cos(angler) 0;tx ty 1];
transf=maketform('affine',T);
newimg=imtransform(img,transf);
figure(2);
imshow(newimg);