%Verification of Sampling theorem
% Sampling theorem wiki --https://en.wikipedia.org/wiki/Nyquist%E2%80%93Shannon_sampling_theorem

tfinal=0.1;
t=0:0.0005:tfinal;
fd=input('Entering analog frequency ');
xD=sin(2*pi*fd*t);

%plotting the original signal
subplot(2,2,1);
plot(t,xD);
title('Original Signal');

%simulate condition for undersampling i.e., fs1<2*fd
fs1=1.7*fd;
n1=0:1/fs1:tfinal;
x_under=sin(2*pi*n1*fd);
subplot(2,2,2);
plot(t,xD,'b',n1,x_under,'r*-'); %plotting analgue and sampled plots together
title('Undersampled Plot');

%condition for Nyquist plot
fs2=4*fd;
n2=0:1/fs2:tfinal;
x_nyquist=sin(2*pi*fd*n2); %Generating the signal
subplot(2,2,3);
plot(t,xD,'b',n2,x_nyquist,'r*-');
title('Nyquist Plot');


%condition for oversampling
fs3=8*fd;
n3=0:1/fs3:tfinal;
x_over=sin(2*pi*fd*n3);
subplot(2,2,4);
plot(t,xD,'b',n3,x_over,'r*-');
title('Oversampling plot');

