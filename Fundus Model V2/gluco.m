global a;global skw;global en;
b=a;
    
r=b(:,:,1);

g=b(:,:,2);

bb=b(:,:,3);

             
ne=g>130;

binaryImage=ne;
% Get rid of stuff touching the border
binaryImage = imclearborder(binaryImage);

fill=imfill(binaryImage,'holes');
 
se=strel('disk',6)
dil=imdilate(fill,se)
 
axes(handles.axes2);imshow(dil)
title('disk image ')
 
ne=g>140;

binaryImage=ne;
% Get rid of stuff touching the border
binaryImage = imclearborder(binaryImage);

cup=imfill(binaryImage,'holes');
 
se1=strel('disk',2);
di=imdilate(cup,se1);
 
cup=di;
 
axes(handles.axes3);imshow(cup)
 title('cup image ')
 


BW=binaryImage ;
CC = bwconncomp(BW);
numPixels = cellfun(@numel,CC.PixelIdxList);
[biggest,idx] = max(numPixels);
BW(CC.PixelIdxList{idx}) = 0;

filteredForeground=BW;


%  
% figure, imshow(BW);
% % Fill holes in the blobs to make them solid.
 binaryImage = imfill(binaryImage, 'holes');
% % Display the binary image.

dis(:,:,1)=immultiply(binaryImage,b(:,:,1));

dis(:,:,2)=immultiply(binaryImage,b(:,:,2));

dis(:,:,3)=immultiply(binaryImage,b(:,:,3));


a = dil;
stats = regionprops(double(a),'Centroid',...
    'MajorAxisLength','MinorAxisLength')


centers = stats.Centroid;
diameters = mean([stats.MajorAxisLength stats.MinorAxisLength],2);
radii = diameters/2;

% Plot the circles.
axes(handles.axes4);imshow(b)
hold on
viscircles(centers,radii);
hold off


imshow(b)
title('input image ');
pause(2);


imshow(dil,[])
title('disk segment image ');
pause(2);


imshow(b)
hold on
viscircles(centers,radii);
hold off
title('Disc boundary');
pause(2);


imshow(di,[])
title('cup image ');
pause(2);


imshow(b)
hold on
viscircles(centers,radii/2);
hold off
title('cup boundary');
pause(2);



c1=bwarea(dil);
c2=bwarea(di);

cdr=c2./(c1)


rim=(1-di)-(1-dil);

RDR=bwarea(rim)./(c2);

set(handles.edit7,'String',cdr);
set(handles.edit8,'String',RDR/2);
 

