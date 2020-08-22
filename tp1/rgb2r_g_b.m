close all;
clear all;

%image
pep=imread('onion.png');
figure(1);
imshow(pep);
whos pep

%image ~ redg+greeng+blueg
redg=pep(:,:,1);
figure(2);
imshow(redg);
greeng=pep(:,:,2);
figure(3);
imshow(greeng);
blueg=pep(:,:,3);
figure(4);
imshow(blueg);

%image =red+green+blue
red=uint8(zeros(size(pep)));
red(:,:,1)=pep(:,:,1);
figure(5);
imshow(red);
green=uint8(zeros(size(pep)));
green(:,:,2)=pep(:,:,2);
figure(6);
imshow(green);
blue=uint8(zeros(size(pep)));
blue(:,:,3)=pep(:,:,3);
figure(7);
imshow(blue);

mypep=red+green+blue;
figure(8);
imshow(mypep);



