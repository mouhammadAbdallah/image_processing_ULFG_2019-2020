clear all;
close all;
[I,map] = imread('kids.tif');
figure (1);
imshow(I, map);
Expr='mean(mean(x))*ones(size(x))';%var(var(x))*ones(size(x))
fun = inline(Expr);
I2 = blkproc(I,[8 8],fun);
figure (2);
imshow(I2,map);