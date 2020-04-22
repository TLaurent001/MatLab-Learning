clear;clc;close all;

% Initialisation
x = 0:0.2:10;
y = sin(x); 
yprime = cos(x);

% Forward Difference
x1 = 0:0.2:10;
y1 = zeros(1,length(x1));

for i = 1:length(x1)-1
    y1(i) = (y(i+1)-y(i))/(x1(i+1)-x1(i));
end

y1(end) = NaN;

% Backward Difference
x2 = 0:0.2:10;
y2 = zeros(1,length(x2));

for i = 1:length(x2)
    if i == 1
        y2(i) = NaN;
    else
        y2(i) = (y(i)-y(i-1))/(x2(i)-x2(i-1));
    end
end

% Central Difference 
x3 = 0:0.2:10;
y3 = zeros(1,length(x3));
    
for i = 1:(length(x3)-1)
    if i == 1
        y3(i) = NaN;
    else
        y3(i) = (y(i+1)-y(i-1))/(x3(i+1)-x3(i-1));
    end
end
y3(end) = NaN;

% Analytical derivative of sin(x)
x4 = 0:0.2:10;
y4 = zeros(1,length(x4));

for i = 1:(length(x4)-2)
    if i == 1
        y4(i) = NaN;
    elseif i == 2
        y4(i) = NaN;
    else
        y4(i) = (y(i-2)-(8*y(i-1))+(8*y(i+1))-y(i+2))/(12*x4(i+1)-12*x4(i));
    end
end
y4(end-1) = NaN;
y4(end) = NaN;

% Analytical derivative of cos(x)
x5 = 0:0.2:10;
y5 = zeros(1,length(x5));

for i = 1:(length(x5)-2)
    if i == 1
        y5(i) = NaN;
    elseif i == 2
        y5(i) = NaN;
    else
        y5(i) = (yprime(i-2)-(8*yprime(i-1))+(8*yprime(i+1))-yprime(i+2))/(12*x5(i+1)-12*x5(i));
    end
end
y5(end-1) = NaN;
y5(end) = NaN;

figure(1) % creates a new figure to plot on
% k = black color :k = dotted black --b = dashed black.
hold on
plot(x1,y1, 'k', 'linewidth', 2 ,'color', 'blue')
plot(x2,y2, 'k', 'linewidth', 2 ,'color', 'green')
plot(x3,y3, 'k', 'linewidth', 2 ,'color', 'red')
plot(x4,y4, '--k', 'linewidth', 2 ,'color', 'black')
plot(x5,yprime, ':k', 'linewidth', 2 ,'color', 'black')

xlabel('x')
ylabel('f(x)')
legend('Forward Difference','Backward Difference','Central Difference','Analytical derivative of sin(x)','Actual Derivative', 'Location', 'NE')
title('Derivatives using different methods')


%%% PART B %%%


xB = 0:0.01:10; 
xB2 = 0:0.1:10;
xB3 = 0:0.5:10;

yB = (xB.*sin((xB.^2))) +1;
yBprime = sin((xB.^2)) + 2*((xB.^2)).*cos((xB.^2));

% Central Difference # 1
xB1 = 0:0.01:10;
yB1 = (xB1.*sin((xB1.^2))) +1;
    
for i = 1:(length(xB1)-1)
    if i == 1
        yB1a(i) = NaN;
    else
        yB1a(i) = (yB1(i+1)-yB1(i-1))/(xB1(i+1)-xB1(i-1));
    end
end


% Central Difference # 2
xB2 = 0:0.1:10;
yB2 = (xB2.*sin((xB2.^2))) +1;
    
for i = 1:(length(xB2)-1)
    if i == 1
        yB2a(i) = NaN;
    else
        yB2a(i) = (yB2(i+1)-yB2(i-1))/0.2;
    end
end


% Central Difference # 3
xB3 = 0:0.5:10;
yB3 = (xB3.*sin((xB3.^2))) +1;
    
for i = 1:(length(xB3)-1)
    if i == 1
        yB3a(i) = NaN;
    else
        yB3a(i) = (yB3(i+1)-yB3(i-1))/1;
    end
end




figure(2) % creates a new figure to plot on
hold on
plot(xB,yBprime, 'k', 'linewidth', 2 ,'color', 'red')
xB1 = linspace(0, 10, numel(yB1a)); 
plot(xB1,yB1a, '--k', 'linewidth', 2 ,'color', 'black')
xB2 = linspace(0, 10, numel(yB2a)); 
plot(xB2,yB2a, '--k', 'linewidth', 2 ,'color', 'blue')
xB3 = linspace(0, 10, numel(yB3a)); 
plot(xB3,yB3a, 'k', 'linewidth', 2 ,'color', 'green')
xlabel('x')
ylabel('f(x)')
legend('Analytical','h = 0.01','h = 0.1','h = 0.5', 'Location', 'NW')
title('Central Difference using different step sizes')





