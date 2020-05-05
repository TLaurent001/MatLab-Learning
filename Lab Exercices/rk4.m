clear; close all; clc;

F = @(t,y) y-t^2+1;
h = 0.5;
t = 0:h:2;
y = zeros(length(t),1);
y(1) = 0.5;

for i = 1:length(t)-1
    k1 = h*F(t(i),y(i));
    k2 = h*F(t(i)+h/2, y(i) +k1/2);
    k3 = h*F(t(i)+h/2, y(i) +k2/2);
    k4 = h*F(t(i)+h, y(i) +k3);
    y(i+1) = y(i) + (1/6)*(k1+2*k2+2*k3+k4);
end

exact = (t+1).^2 - 0.5*exp(t);

figure;
hold on
plot(t,y,'o-k','linewidth', 2)
plot(t,exact,'.r','markersize', 15)
legend('RK4 Method','Exact Solution','Explicit Euler', 'location' , 'NW')
title('Runge kutta Method')
ylabel('y', 'fontweight', 'b')
xlabel('t', 'fontweight', 'b')
set(gca, 'fontsize', 16)