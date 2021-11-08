%Linear Convolution stuff

%Debug code for default input
x = [ 1 2 3 4 5 ];
y = [ -1 5 -6 1 0 ];
%x = input('Enter the co-efficients of x(n)');
%h = input('Enter the co-efficients on h(n)');

y = conv(x,h);
stem(y)
title('Convolution');

%Corelation
%x = [10 11 12 15]
disp('Welcome to the Correlation plotting');
z1 = input('Enter the 1st sequence:' );
res1 = conv(z1,fliplir(z1);
stem(res1);

z2 = input('Enter the 2nd sequence:' );
res2 = conv(x1,fliplr(x2));
stem(res2);
