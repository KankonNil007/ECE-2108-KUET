x = [2 2 0 9 0 5 3]
N = length(x)
K = N 
n = 0:1:N-1



figure(1)
subplot(311)
stem(n,x)
title('Input Sequence')
xlabel('Time Index')
ylabel('Amplitude')

y_func = fft(x,K) 
k = 0:1:K-1 
subplot(312) 
stem(k,y_func)
title('FFT Sequence using MATLAB Builtin Function')
xlabel('Frequency Index')
ylabel('Amplitude')

y_manual = []
for k = 0:1:K-1
    val = 0
    for n = 0:1:N-1
        val = val + (x(n+1)*exp(-i*2*pi*k*n/N)) 
    end 
    y_manual = [y_manual,val]
end

k = 0:1:K-1
subplot(313)
stem(k,y_manual)
title('FFT Sequence using Equation')
xlabel('Frequency Index') 
ylabel('Amplitude')



n = 0:1:N-1
subplot(312)
stem(n,real(x))
title('Real Part of the IDFT sample')
xlabel('Time index (n)')
ylabel('Amplitude')

subplot(313) 
stem(n,imag(x))
title('Imaginary Part of the IDFT sample')
xlabel('Time index (n)')
ylabel('Amplitude')
legend(["Real part" "Imaginary part"])