I = checkerboard(40,2,2);
C = corner(I);
subplot(1,2,1);
imshow(I);
hold on
plot(C(:,1), C(:,2), '.', 'Color', 'g')
title('Maximum Corners = 200')
hold off
corners_max_specified = corner(I,3);
subplot(1,2,2);
imshow(I);
hold on
plot(corners_max_specified(:,1), corners_max_specified(:,2),'.', 'Color','g');
title('Maximum Corners = 3')
hold off