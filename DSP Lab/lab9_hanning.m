%FIR Filter using Hanning, Hamming and Rectangular Window
N=input('Enter the value of N:');
wc=input('Enter cutoff frequency:');

h1 = fir1(N,wc/pi,hanning(N+1));
h2 = fir1(N,wc/pi,hamming(N+1));
h3 = fir1(N,wc/pi,rectwin(N+1));
%h4=fir1(N,wc/pi,"bandpass",hamming(N+1));
figure(1); freqz(h1);

figure(2); freqz(h2);

figure(3); freqz(h3);