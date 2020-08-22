I = imread('eight.tif');
 J = imnoise(I,'salt & pepper',0.02);
M=3; N=3;
K =medfilt2(J,[ M N ]);
figure, imshow(J), figure, imshow(K)