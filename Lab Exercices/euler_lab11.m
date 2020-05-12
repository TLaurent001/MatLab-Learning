clear;clc; close all;

%%% ALPHA %%%

% y' =  -0.5y(t)
% y(t = 0) = 1
% t goes from 0 to 40

actual_function = @(t) exp(-0.5*t);
actual_x = 0:0.1:40;
actual_y = actual_function(actual_x);

% Step size: h = 4.2

h= 4.2;
x1 = 0:4.2:40;
y1 = zeros(1,length(x1));
y1(1)=1;
for n=1:length(x1)-1
    y1(n+1)= y1(n)+h*(-0.5*y1(n));
end

% Step size: h = 3.0

h= 3.0;
x2 = 0:h:40;
y2= zeros(1,length(x2));
y2(1)=1;
for n=1:length(x2)-1
    y2(n+1)= y2(n)+h*(-0.5*y2(n));
end

% Step size: h = 1.0

h= 1.0;
x3 = 0:h:40;
y3 = zeros(1,length(x3));
y3(1)=1;
for n=1:length(x3)-1
    y3(n+1)= y3(n)+h*(-0.5*y3(n));
end

figure;
hold on
plot(actual_x,actual_y,'-k','linewidth', 2)
plot(x1,y1,'o-r','linewidth', 2)
plot(x2,y2,'^-g','linewidth', 2)
plot(x3,y3,'*-b','linewidth', 2)

legend('Actual Solution','Euler step size 4.2','Euler step size 4.2','Euler step size 4.2','location' , 'NW')
title('y(t) using Explicit Euler')
ylabel('y', 'fontweight', 'b')
xlabel('t', 'fontweight', 'b')
set(gca, 'fontsize', 16)






%%% BETA %%%

% y'' = y' + sin(ty)
% v = y'
% v' = -v +sin(ty)
% v0 = 2
% y0 = 1

h= 0.01;
x4 = 0:h:40;
y4 = zeros(1,length(x4));
v4 = zeros(1,length(x4));
y4(1)= 1;
v4(1) = 2;
for n=1:length(x4)-1
    y4(n+1)= y4(n)+h*(v4(n));
    v4(n+1) = v4(n)+h*(-v4(n)+sin(x4(n)*y4(n)));
end

figure;
hold on
subplot(1,2,1)
     %plot y versus t
plot(x4,y4,'-k','linewidth', 2)
title('y versus t')
ylabel('y', 'fontweight', 'b')
xlabel('t', 'fontweight', 'b')

subplot(1,2,2)
     %plot dy/dt (or v) versus y
plot(y4, v4,'-k','linewidth', 2)
title('v versus y')
ylabel('v', 'fontweight', 'b')
xlabel('y', 'fontweight', 'b')

% % Step size: h = 4.2
% f = @(x1,y1) -0.5*y1(x1);
% x1 = 0:4.2:40;
% y1 = zeros(1,length(x1));
% y1(1) = 1;
% 
% 
% for i = 1:length(x1)-1
%     y1(i+1)= y1(i)+ 4.2*f(x1(i), y1(i));
% end
%  