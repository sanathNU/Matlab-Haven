
%DFT Using FFT
clear all;
x = [1,1,0,0]; %input array
N=length(x); %Number of samples

t = 0:N-1;
subplot(2,1,1);
stem(x);
title('input');

y = fft(x,N); %Fast Fourier Transform
subplot(2,1,2);
stem(y);

xlabel('time');
ylabel('Amplitude');

disp(x);
disp(y);
