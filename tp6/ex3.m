Hsize=[4 4];
Havg = fspecial('average',Hsize);


R=4;
Hdisk = fspecial('disk',R);


Hsize=[5 5];
sigma=0.625;
Hgau = fspecial('gaussian',Hsize,sigma);


alpha=0.2;
Hlap = fspecial('laplacian',alpha);


Hsize=[4 4]; sigma=0.4; Hlog=fspecial('log',Hsize,sigma);


Len=30; Dir=60; Hmotion=fspecial('motion',Len,Dir);


Hpr = fspecial('prewitt'); Hso = fspecial('sobel');


alpha=0.3; Hu=fspecial('unsharp',alpha);


I=imread('peppers.png');


A=imfilter(I,Havg); figure, subplot(3,3,1);imshow(A)
title('Averaged Image')


D=imfilter(I,Hdisk); subplot(3,3,2); imshow(D)
title('Circuled Averaged Image')


G=imfilter(I,Hgau); subplot(3,3,3); imshow(G)
title(' Image filtered with Gaussian lowpass filter ')


L=imfilter(I,Hlap); subplot(3,3,4); imshow(L)
title(' Image filtered with Laplacian filter');


Lo=imfilter(I,Hlog); subplot(3,3,5); 
imshow(Lo);
title('log=Laplacian of Gaussian filtered image');

M=imfilter(I,Hmotion); subplot(3,3,6); imshow(M)
title(' blurred Image');


P=imfilter(I,Hpr); subplot(3,3,7); imshow(P)
title(' horizantal Edge emphased by prewitt filter');


S=imfilter(I,Hso); subplot(3,3,8); imshow(S)
title(' horizantal Edge emphased by sobel filter');


U=imfilter(I,Hu); subplot(3,3,9); imshow(U)
title(' unsharped contrast enhancement filter');
