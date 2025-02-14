
I=rgb2gray(a);
axes(handles.axes2); imshow(I); title('Gray Image'); pause(2);
I3 = histeq(I);
axes(handles.axes2); imshow(I3);title('Increase the Image Contrast');

axes(handles.axes3); cla(handles.axes3); title(''); axis off
axes(handles.axes4); cla(handles.axes4); title(''); axis off 

set(handles.edit7,'String','++');
set(handles.edit8,'String','++');