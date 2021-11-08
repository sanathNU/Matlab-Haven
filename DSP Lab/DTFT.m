%Discrete time fourier transform
% Coefficients of transfer function
b = [1]; %Numerator coefficients
a = [1,-0.8,-0.5,1]; %Denominator coefficients
w = -pi:pi/16:pi;

Xw=freqz(b,a,w);
subplot(2,1,1);
plot(w,abs(Xw));
%Magnitude plot
xlabel('Frequency');
ylabel('Mangnitude of X');

% Frequency plot
subplot(2,1,2)
plot(w,angle(Xw));
xlabel('Angle');
ylabel('Phase');
