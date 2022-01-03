% Lab 8 : - Digitial Chebysev Filters
rp = input('Enter passband attenuation: ');
rs = input('Enter the stopband attenuation: ');
wp = input('Enter the passband frequency: ');
ws = input('Enter the stopband frequency: ');

[N,wn] = cheb1ord(wp,ws,rp,rs);
figure(1)
[b1,a1] = cheby1(N,rp,wn,'low');
freqz(b1,a1);

figure(2)
[b2,a2] = cheby1(N,rp,wn,'high');
freqz(b2,a2);