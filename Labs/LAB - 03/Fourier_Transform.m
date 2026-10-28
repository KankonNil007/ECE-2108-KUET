clc;
clear;
close all;

Fs = 1000;
t = -5:1/Fs:5;

x = exp(-0.5*abs(t));

N = length(x);
X = fftshift(fft(x));
f = (-N/2:N/2-1)*(Fs/N);

subplot(2,1,1);
plot(t,x,'LineWidth',2);
grid on;
xlabel('Time');
ylabel('Amplitude');
title('Exponential Signal');

subplot(2,1,2);
plot(f,abs(X)/N,'LineWidth',2);
grid on;
xlim([-5 5]);
xlabel('Frequency (Hz)');
ylabel('|X(f)|');
title('Fourier Transform of Exponential Signal');