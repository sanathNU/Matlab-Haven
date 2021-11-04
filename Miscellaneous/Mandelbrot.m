%Script for plotting the mandelbrot set
%Inspiration to do this from video: https://www.youtube.com/watch?v=NGMRB4O922I
%Constants that can be changed for much more accurate and awesome rendering
MaxSize = 1001;
MaxIterations = 50;

%creating an initial grid on the complex plane
x = linspace(-2.1,0.6,MaxSize);
y = linspace(-1.1,1.1,MaxSize);

[X,Y] = meshgrid(x,y);
%Declaring C as complex version of X and Y
C=complex(X,Y);

%Defining max iteration and maximum, value of Z
Z_max = 1e6;
Z = C;
%The final mesh to plot on
B = zeros(size(X));

%The actual funda, doing the Z^2 +C thing for max iterations
%and filtering out
for k = 1:MaxIterations
    Z = Z.^2 + C;
    B = B+(abs(Z) <2);
end

%Plotting the image using imagesc function
imagesc(B);
colormap(jet);
title('MandelBrot Set','FontSize',16);
