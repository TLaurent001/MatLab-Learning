clear;clc;close all;

file = 'fluxes_linreg.csv';
fileID = fopen(file);
C = textscan(fileID, '%f %f', 'delimiter', ',', 'headerlines', 6);
y = C{1}; %total flux
x = C{2}; %flux per unit width
xnew = [x,ones(20,1)];
Beta = inv(xnew'*xnew)*xnew'*y;
y_estimate = Beta(1).*x+Beta(2);
SStot = 0;
SSres = 0;

for i = 1:length(y)
    SStot = SStot + (y(i)-mean(y))^2;
    SSres = SSres + (y(i)-(Beta(1)*x(i)+Beta(2)))^2;
end

R2 = 1 - (SSres/SStot);

figure(1)
scatter(x,y, 'filled', 'k','linewidth', 1.2)
set(gca, 'XLim', [-1.5 1.5], 'YLim', [-400 400])
ylabel('flux (m^3/s)')
xlabel('flux/width (m^3/s/m)')  
title('Linear Regression for flux vs. flux/width')
hold on
plot(x, y_estimate, '-k', 'color', 'red','linewidth', 1.2)
L = ['linear regression (y = ', num2str(Beta(1)), '*x + ', num2str(Beta(2)) ') R^2 = ', num2str(R2)];
legend('actual data', L, 'location', 'northwest')