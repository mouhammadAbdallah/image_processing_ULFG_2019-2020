clear all;
close all;
%create image
img= imread('rice.png');%text.png cameraman.tif
figure(1);
imshow(img,[ ]);

%dct of this image block by block
img_dct=blkproc(img,[8,8],'dct2');
figure(2);
imshow(img_dct,[ ]);

%idct of this image block by block
img_recons=blkproc(img_dct,[8,8],'idct2');
figure(3);
imshow(img_recons,[ ]);

%reconstitution by taking ixi from 8x8 of the dct of the image
for i=1:8
    mat=zeros(8);
    mat(1:i,1:i)=1;
    fun=inline('x.*mat');
    img_dct_reduit=blkproc(img_dct,[8 8],fun,mat);
    img_recons_reduit=blkproc(img_dct_reduit,[8 8],'idct2');
    img_recons_reduit=uint8(img_recons_reduit);
    figure(i+3);
    imshow(img_recons_reduit,[]);
    %error of reconstution
    Erreur(i)= sum(sum((img - img_recons_reduit).^2));
end
%plotting error
figure(12);
plot(Erreur);