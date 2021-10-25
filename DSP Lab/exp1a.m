clc;
clear;

subplot(2,3,1);
n = -5:1:5;
% The equation is y = 2*delta(n+2) -delta(n-4);
y = [zeros(1,3),2*ones(1,1),zeros(1,5),-ones(1,1),zeros(1,1)];
stem(n,y);
title('Equation 1');
axis([ -5 5 -3 3]);

subplot(2,3,2);
n1 = -2:1:5;
% The equation is x = delta(n)-2*delta(n-4)
y1 = [zeros(1,2),ones(1,1),zeros(1,3),-2*ones(1,1),zeros(1,1)];
stem(n1,y1);
title('Equation 2');
axis([-2  5 -3 3]);

subplot(2,3,3);
t = 0:0.01:10;
%Ramp function
plot(t,t);
title('Ramp Function');
axis([-1 10 0 10]);

subplot(2,3,4);
%Unit Step stuff
t1 = -1:0.01:5;
unitStep = t1>=0;
plot(t1,unitStep);
title('Unit Step Function');
axis([-0.5 5 -1 2]);

%Equation  x = 2*delta(n+2) - delta( n-4)
subplot(2,3,5)
n = -5:1:5;
y = 2*delta(0,-5,5)-delta(4,-5,5);
stem(n,y);
axis([-5 5 -3 3]);
title('Equation 3');

%Equation x = unit(n)- unit(n-4)
subplot(2,3,6)
n = -1:1:5;
y = unit(0,-1,5)-unit(4,-1,5);
stem(n,y);
axis([-1 5 -3 3]);


function [x,n]= delta(a,n1,n2)
    n = n1:n2;
    x = (n-a)==0;
end

function [x,n] = unit(a,n1,n2)
    n = n1:n2;
    x = (n-a)>=0;
end