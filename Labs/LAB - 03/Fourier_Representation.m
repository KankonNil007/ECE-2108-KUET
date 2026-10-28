clc;
clear;
close all;

t = linspace(0,2*pi,1000);
M = input("Enter Number of Harmonics: ");

x = sin(t);
fs = 0;

for n = 1:M
    bn = 1;
    fs = fs + bn*sin(n*t);
end

subplot(2,1,1);
plot(t,x,'LineWidth',2);
grid on;
ylim([-1.2 1.2]);
xlabel('Time');
ylabel('Amplitude');
title('Ideal Sine Wave');

subplot(2,1,2);
plot(t,fs,'LineWidth',2);
grid on;
ylim([-M M]);
xlabel('Time');
ylabel('Amplitude');
title('Fourier Series Representation');