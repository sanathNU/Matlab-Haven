%This script is a demonstration of basic Singals in Digital Signal
%Processing. Simple waveforms such as sine, cos ,sqaure and sawtooth curves
%are generated.

clc;
a = input('Enter amplitude ');
f = input('Enter the frequency ');
stepSize = input('Enter your desired step size for plotting ');
t = 0:stepSize:5; % The time variable for plotting

%Plotting a continuous sine wave
subplot(3,2,1);
plot(t, a*sin(2*pi*f*t));
axis([0 1 (-1-1) (1+a)]); %normalizing the axis
xlabel('Time');
ylabel('Amplitude');
title('Generation of Continuous Sine Wave');
grid on;

%Plotting a continuous square wave
subplot(3,2,2);
plot(t, a*square(2*pi*f*t),'r');
axis([0 1 (-1-1) (1+a)]); %normalizing the axis
xlabel('Time');
ylabel('Amplitude');
title('Generation of Continuous Square Wave');
grid on;

%Plotting a discrete sine wave using stem function
subplot(3,2,3);
stem(t, a*sin(2*pi*f*t));
axis([0 1 (-1-1) (1+a)]); %normalizing the axis
xlabel('Time');
ylabel('Amplitude');
title('Generation of Discrete Sine Wave');
grid on;

%Plotting a discrete square wave
subplot(3,2,4);
stem(t, a*square(2*pi*f*t),'r');
axis([0 1 (-1-1) (1+a)]); %normalizing the axis
xlabel('Time');
ylabel('Amplitude');
title('Generation of Discrete Square Wave');
grid on;

%Plotting a continuous sawtooth wave
subplot(3,2,5);
plot(t, a*sawtooth(2*pi*f*t));
axis([0 1 (-1-1) (1+a)]); %normalizing the axis
xlabel('Time');
ylabel('Amplitude');
title('Generation of Continuous sawtooth Wave');
grid on;

%Plotting a discrete sawtooth wave
subplot(3,2,6);
stem(t, a*sawtooth(2*pi*f*t),'r');
axis([0 1 (-1-1) (1+a)]); %normalizing the axis
xlabel('Time');
ylabel('Amplitude');
title('Generation of Discrete Sawtooth Wave');
grid on;



