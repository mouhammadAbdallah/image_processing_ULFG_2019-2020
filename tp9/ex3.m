BW = imread('text.png');
figure(1)
imshow(BW);
bw2=zeros(size(BW));
labels = bwlabel(BW,4);
figure(2)
imshow(labels,[])

bw2=labels==2;
figure(3)
imshow (bw2)