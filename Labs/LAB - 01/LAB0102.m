clc, clear;
t=-5:1:25; 
amp=[zeros(1,5), ones(1,26)]; 
figure(1);      
% number of figure 
subplot(121)             
p=plot(t,amp);      
% continuous plot 
set(p,'Linewidth',2); 
axis([-5 25 -0.5 1.5]);  
title('Unit Step Signal(Continuous Time Domain)'); 
xlabel('Time');         %label of x axis 
ylabel('Amplitude');    
%label of y axis 
subplot(122)            
s=stem(t,amp);          % discrete plot 
axis([-5 25 -0.5 1.5]); 
set(s,'Linewidth',2); 
xlabel('Time');         %label of x axis 
ylabel('Amplitude');    %label of y axis 
title('Unit Step Signal(Discrete Time Domain)'); 