%Impulse response of an LTI System

N = input('Enter the required length of impulse response N ');
n = 0:N-1;

b = input('Enter the co-efficients of x(n),b = ');
a = input('Enter the co-efficients of y(n),a = ');

x = [1,zeros(1,N-1)];
y = filter(b,a,x);
stem(n,y);
