I=imread('cell.tif');
figure(1)
subplot(4,4,1)
imshow(I);
title('Image Originale')

%hist
subplot(4,4,2);
imhist(I);
title('Image histogram');

%rescale the image so that it covers the entire dynamic range([0,1])
D1=imadjust(I,[40/255 170/255],[0 1]);
subplot(4,4,3)
imshow(D1);
title('scaled image');

%hist scaled
subplot(4,4,4);
imhist(D1);
title('scaled Image histogram');

%detect entire cell=segmentation
BWs=edge(D1,'sobel',(graythresh(D1)*.1));%to create the binary mask
subplot(4,4,5)
imshow(BWs),title('binary gradient mask');
%fill gaps
se90=strel('line',3,90);
se0=strel('line',3,0);
%dilate the image
BWsdil=imdilate(BWs,[se90 se0]);
subplot(4,4,6)
imshow(BWsdil),title('dilated gradient mask');

%fill interior gaps
BWdfill=imfill(BWsdil,'holes');
subplot(4,4,7)
imshow(BWdfill),title('binary image with filled holes');
%remove connected objects on border
BWnobord=imclearborder(BWdfill,4);
subplot(4,4,8)
imshow(BWnobord),title('cleared border image');

%smooth the object by eroding twice with diamond
seD=strel('diamond',1);
BWfinal=imerode(BWnobord,seD);
BWfinal=imerode(BWfinal,seD);
subplot(4,4,9)
imshow(BWfinal),title('segmented image');

%outline created by bwperim
BWoutline=bwperim(BWfinal);
Segout=double(I)+double(BWoutline).*255;
subplot(4,4,10)
imshow(Segout,[]),title('outlined original image');
%% Extract the cell from the originall image
seg=immultiply(BWfinal,I);
imshow(seg)
title(' image cell extracted');

