global skw;global en;

 I=rgb2gray(a);
axes(handles.axes2); imshow(I); title('Gray Image'); pause(2);
I3 = histeq(I);
axes(handles.axes2); imshow(I3);title('Increase the Image Contrast');


m = zeros(size(I,1),size(I,2));     
m(111:222,123:234) = 1;
I = imresize(I,.5);  
m = imresize(m,.5);

axes(handles.axes3); imshow(I);
clss = region_seg(I, m, 700);
pause(1);
 title('Segmented image');
axes(handles.axes4); imshow(clss); title('Classified image');  

set(handles.edit7,'String','++');
set(handles.edit8,'String','++');