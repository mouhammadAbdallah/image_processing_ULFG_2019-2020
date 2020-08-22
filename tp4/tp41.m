lutfun=@(x)(sum(x(:))==2);
lut=makelut(lutfun,2)

%lut=[0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1];
bw1=imread('circles.png');
bw2=bw1-applylut(bw1,lut);
imshow(bw2);