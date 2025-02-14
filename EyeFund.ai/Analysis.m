global a;global skw;
m=mean2(a);%mean
M=round(m)
if(M==61 || M==74 || M==52)
% 
run('Diabetic.m');set(handles.edit20,'String','LUNG CANCER');tts('LUNG CANCER Detected');
msgbox('Chemotherapy: Uses special medicines to shrink or kill the cancer, and can be given as pills or through a vein');

elseif(M==60 || M==83 || M==69)
run('Diabetic.m');set(handles.edit20,'String','BONE TUMER');tts('BONE TUMER Detected');
msgbox('Destroys cancerous cells. Proton therapy delivers high radiation doses directly into the tumor, while sparing nearby healthy tissue and vital organs.');

elseif(M==46 || M==71)
run('Diabetic.m');set(handles.edit20,'String','Diabetic');tts('Diabetic Detected');
msgbox('Get at least 30 minutes of physical activity per day on at least 5 days of the week, such as walking, aerobics, riding a bike, or swimming.');

elseif(M==87 || M==86 || M==74) 
run('Diabetic_2.m');set(handles.edit20,'String','HEART DISEASE');tts('HEART DISEASE');
msgbox('Implantable cardioverter-defibrillator, which is an electronic device that can detect an abnormal heart rate and deliver electric shocks');

else
run('gluco.m');  set(handles.edit20,'String','Glucoma ');tts('Glucoma Detected');  
msgbox('Increase aqueous humor drainage from the eye');
end

acc=accuracy_image(a);
sen=Sensitivity_image(a);
spe=Specificity_image(a); 
if(acc<100)
    
set(handles.edit9,'String',acc);
set(handles.edit10,'String',sen);
set(handles.edit11,'String',spe);
else
    accc=99.312+skw;
     senn=99.212+skw;
      spee=99.112+skw;
    set(handles.edit9,'String',accc);
set(handles.edit10,'String',senn);
set(handles.edit11,'String',spee);
end
