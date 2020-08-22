I = imread('coins.png');
figure(1);imshow(I)
BW = im2bw(I);
figure(2);imshow(BW)
BW_filled = imfill(BW,'holes');
boundaries = bwboundaries(BW_filled);
figure(1);hold on
for k=1:10
b = boundaries{k}; plot(b(:,2),b(:,1),'g','LineWidth',3);
end