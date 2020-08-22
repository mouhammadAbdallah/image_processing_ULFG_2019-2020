% I=imread('pout.tif')
% J=im2bw(I,110/255);
% imshow(J);

% I=imread('pout.tif');
% J=imadjust(I,[ 100/255  150/255 ], [ 20/255  200/255 ]);
% imshow(J);

I=imread('pout.tif')
figure(1)
[J,T]=histeq(I)
subplot(221)
imshow(I)
subplot(222)
imhist(I)
subplot(223)
imshow(J)
subplot(2,2,4)
imhist(J)
figure
plot(T)