I = imread('rice.png');
figure(1)
subplot('221')
imshow(I);
BW = im2bw(I);
J = colfilt(BW, [5 5], 'sliding', @mode) ;
subplot('222')
imshow(J)

labels = bwlabel(J,4);

s = regionprops(J, 'Area');
areas = cat(1, s.Area);
indexOfBigObject = find(areas==max(areas))

k=labels==indexOfBigObject;
subplot('223')
imshow (k)

corners_max_specified = corner(k,3);
hold on
plot(corners_max_specified(:,1), corners_max_specified(:,2),'.', 'Color','g');
hold off

subplot('224')
imshow (k)
boundaries = bwboundaries(k);
hold on
for k=1:10
    try
b = boundaries{k}; plot(b(:,2),b(:,1),'b','LineWidth',1);
    end
end