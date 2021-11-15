
%Inverse Discrete fourier transform

N = input('Input the number of samples ');
y = input('Input the values of X(k) ');

t = 0:N-1;
subplot(2,1,1)
stem(t,y)
xlabel('Frequency')
ylabel('Input X(k)')

z = ifft(y,N);
disp(z);
subplot(2,1,2)
stem(t,z)
xlabel('Time');
ylabel('Output x[n]');
