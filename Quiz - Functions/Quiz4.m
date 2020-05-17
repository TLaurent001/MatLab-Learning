clear;clc; close all;

% y' =  -2y - cos(t) 
% y(t = 0) = 1
% t goes from 0 to 10 by 0.1 steps

actual_function = @(t) (0.2*(3*exp(-2*t) + sin(t) + 2*cos(t)));
actual_x = 0:0.1:10;
actual_y = actual_function(actual_x);

h= 0.1;
x = 0:h:10;
y = zeros(1,length(x));
y(1)=1;
y(2)= y(1)+h*(-2*y(1) + cos(x(2)));

for n = 3:length(x)
    y(n) = y(n-1) + 1.5*h*(-2*y(n-1)+cos(x(n-1))) - 0.5*h*((-2*y(n-2)+cos(x(n-2))));
end

figure;
hold on
plot(x,y,'-red','linewidth', 3)
plot(actual_x,actual_y,':k','linewidth', 4)

legend('Euler Approximation','Actual Solution','location' , 'NE')
title('y(t) using Explicit Euler')
ylabel('y', 'fontweight', 'b')
xlabel('t', 'fontweight', 'b')
set(gca, 'fontsize', 16)





