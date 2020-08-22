I=imread('rice.png');
J=im2bw(I);
J = colfilt(J, [5 5], 'sliding', @mode) ;
J1=J;
[r,col]=size(J);
k=1;
for i=1:1:r
    for j=1:1:col
        if J(i,j)==1
            ob=bwselect(J,j,i);
            objet{k}.image=ob;
            objet{k}.surface=bwarea(ob);
            l=bwperim(ob);
            objet{k}.perim=sum(sum(l));
            [X,Y]=find(ob==1);
            xg=sum(X)/sum(sum(ob));
            yg=sum(Y)/sum(sum(ob));
            objet{k}.cdg=[xg,yg];
            %imshow(ob)
            %pause (0.4)
            J=J-ob;
            k=k+1;
        end
    end
end

ob1(:,:,1)=255*uint8(J1);
ob1(:,:,2)=255*uint8(J1);
ob1(:,:,3)=255*uint8(J1);
figure(1)
imshow(ob1)
for i =1:length(objet)
    xg = objet{i}.cdg (1);
    yg = objet{i}.cdg (2);
    ob1(round(xg),round(yg),2)=0;
    ob1(round(xg),round(yg),3)=0;
end
figure(2)
imshow(ob1)

% https://www.mathworks.com/help/images/ref/regionprops.html