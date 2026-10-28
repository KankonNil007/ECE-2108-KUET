clc;
clear;
close all;

n = -5:25;
x = [zeros(1,5) ones(1,26)];

k = 5;

y1 = shiftSignal(x,k);
y2 = shiftSignal(x,-k);

figure

subplot(3,1,1)
plot(n,x,'r','LineWidth',1.5)
grid on
title('Original Unit Step Signal')
xlabel('n')
ylabel('Amplitude')

subplot(3,1,2)
plot(n,y1,'b','LineWidth',1.5)
grid on
title(['Shifted Signal (k = ' num2str(k) ')'])
xlabel('n')
ylabel('Amplitude')

subplot(3,1,3)
plot(n,y2,'LineWidth',1.5)
grid on
title(['Shifted Signal (k = ' num2str(-k) ')'])
xlabel('n')
ylabel('Amplitude')