clear;

Fs = 1000;
T = 1/Fs;
t = 0:1/Fs:1;
L=length(t);
y = exp(-t);
subplot(211)
plot(t,y)
title('Single frequency Sine Signal');
xlabel('time (seconds)');

NFFT = 2^nextpow2(L);
Y = fft(y,NFFT)/L;
Abs_Y = abs(Y);
Abs_Y = fftshift(Abs_Y); 
f = (Fs/2)*linspace(-1,1,NFFT);
subplot(212) 
plot(f,2*(Abs_Y(1:NFFT)));
xlim([-10,10])
title('Amplitude Spectrum of y(t)');
xlabel('Frequency (Hz)');
ylabel('|Y(f)|');

