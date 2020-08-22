I =imread ('cameraman.tif');
subplot(2,2,1);imshow(I); title ('Original Image');

Len=20;Theta =45;
H =fspecial ('motion', Len, Theta );%% mvt de 20 pixels et 45 degre
MotionBlur= imfilter (I,H,'replicate');
subplot(2,2,2);imshow(MotionBlur);title('Motion Blurred Image');

H=fspecial('disk');
blurred=imfilter(I,H,'replicate');
subplot(2,2,3);imshow(blurred);title('Blurred disk Image');

H=fspecial('unsharp');
sharpened=imfilter(I,H,'replicate');
subplot(2,2,4);imshow(sharpened);title('sharpened  Image');
