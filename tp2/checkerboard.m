close all;
clear all;

%create image using checkboard matrix where value are 0 , 0.7 ,1
chessBoard=(checkerboard>0.5);
figure(1);
imshow(chessBoard);

%fft
chessBoardf=fftshift(fft2(chessBoard));
figure(2);
imshow(abs(chessBoardf),[]);
figure(3);
mesh(abs(chessBoardf));
