%Doing filter stuff
%Calculating for Predetermined values

Ap = 0.7; As = 0.24;
omega_p = 0.25*pi; omega_s = 0.75*pi;

T = 1; Fs = 1/T;

kp = -20*log10(Ap);
ks = -20*log10(As);

p_f = (2/T)*tan(omega_p/2);
p_s = (2/T)*tan(omega_s/2);

[N,wn] = buttord(p_f,p_s,kp,ks,'s');
[b,a] = butter(N,wn,'s');

Hs = tf(b,a);

[n,a] = bilinear(b,a,Fs);
Hz = tf(n,d,T);

w = 0:pi/16:pi;
Hw = freqz(n,d,w);

mag = abs(Hw);
pha = angle(Hw);

subplot(2,1,1);
plot(w/pi,mag);
ylabel('Magnitude');

subplot(2,1,2);
plot(w/pi,pha);
ylabel('Phase');