clc, clear; 
t = -3:3; 
amp = [0,0,0,1,0,0,0]; 
figure(1);      
% number of figure 
subplot(121)             
p=plot(t,amp);          % continuous plot 
set(p,'Linewidth',2); 
title('Unit Impulse Signal(Continuous Time Domain)'); 
xlabel('Time');         %label of x axis 
ylabel('Amplitude');    
%label of y axis 
subplot(122)            
s=stem(t,amp);          % discrete plot 
set(s,'Linewidth',2); 
xlabel('Time');         
%label of x axis 
ylabel('Amplitude');    %label of y axis 
title('Unit Impulse Signal(Discrete Time Domain)'); 