%Circular correlation using DFT

x = [ 1 1 0 0];
y = [ 2 0 2 0];

N = max(length(x),length(h));

X=fft(x,N);
Y=fft(h,N);
Y=conj(Y);

A = X.*Y;
B = ifft(A,N);
disp(x);disp(y);
disp(B);

disp(cconv(x,conj(y),N));
