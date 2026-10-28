clc, clear; 
t=-10:10; 
amp=[zeros(1,10) t(11:21)]; 
figure(1);      
% number of figure 
subplot(121)             
p=plot(t,amp);      
set(p,'Linewidth',2); 
axis([-5 10 -0.5 11]);   
% continuous plot 
title('Unit Ramp Signal(Continuous Time Domain)'); 
xlabel('Time');         %label of x axis 
ylabel('Amplitude');    
%label of y axis 
subplot(122)            
s=stem(t,amp);          % discrete plot 
axis([-5 10 -0.5 11]); 
set(s,'Linewidth',2); 
xlabel('Time');         %label of x axis 
ylabel('Amplitude');    %label of y axis 
title('Unit Ramp Signal(Discrete Time Domain)'); 