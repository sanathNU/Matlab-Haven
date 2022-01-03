%IIR method of designing filters
%We are calculating for predetermined values
Ap = 0.7; As = 0.24;
omega_p = 0.25*pi; omega_s = 0.5*pi;

T = 1; Fs = 1/T;

kp = -20*log10(Ap);
ks = -20*log10(As);

p_a = omega_p/T;
p_s = omega_s/T;

[N,wn] = buttord(p_a,p_s,kp,ks,'s');
[b,a] = butter(N,wn,'s');

%defining analog transfer function
Hs = tf(b,a);

%defining digital transfer function
[n,d] = impinvar(b,a,Fs);
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

