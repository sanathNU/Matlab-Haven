%Circular Convolution using DFT

x = [1 2 3 8 9];
h = [4 6 7 10 0 9 7];

disp(x);disp(h);

N = max(length(x),length(h));
%actual logic using multiplication , then inversion and idft
X=fft(x,N);
Y=fft(h,N);
s=X.*Y;
t=ifft(s,N);
disp(t);

%Verification of same logic using inbuilt 'cconv' function
t1 = cconv(x,h,N);
disp(t1);
