clear;clc;close all;

file = 'OAKtides.txt';
fileID = fopen(file);
C = textscan(fileID, '%f %f %f %f %f %f %f', 'headerlines', 6); t = datenum([C{1} C{2} C{3} C{4} C{5} C{6}]);
y = C{7};
h = t(2) - t(1);
dydx = gradient(y(:)) ./ gradient(t(:));
dydx2 = gradient(dydx(:)) ./ gradient(t(:));

% We know that local min and local max can be found using both first and
% the second derivative at one point. For local max, we can use f'(x) = 0
% and f"(x) < 0. For local min its the opposite, f'(x) = 0 and f"(x) > 0.

% Looking at the data however we see that, while the plot looks like it
% goes through a slope of 0, it never actually does so, often jumping from
% % around 0.4 to 0.2 and vice and versa. The same goes for f"(x) but it
% doesn't matter for that one.

% Our strategy will thus be to find the points the closet to 0 in a 3 wide
% search in the array dydx. To do this we just need to get the absolute
% value of the component and compare them. Then you can categorize them by
% using f"(x)

Max = 0;
Min = 0;
Error_values = NaN;

for i = 1:length(dydx)
    if i < 4 || i > length(dydx)-3
    elseif abs(dydx(i)) <= 1 
        if abs(dydx(i-1)) > abs(dydx(i)) && abs(dydx(i)) < abs(dydx(i+1))
            if dydx2(i) < 0
                Max = [Max(:);t(i)];
            elseif dydx2(i) > 0
                Min = [Min(:);t(i)];
            else
                Error_values = [Error_values(:);t(i)];
            end
        else
        end
    end
end

Max = Max(Max~=0);
Min = Min(Min~=0);

figure(1)
plot(t,y, 'k', 'linewidth', 1.2)
set(gca, 'XLim', [t(1) t(end)], 'YLim', [-0.5 2.5])
datetick('x', 'mm/dd')
ylabel('Depth (m)')
xlabel('Date')
title('Tides at Oakland Airport')
hold on;
vertical = [-0.5,2.5];
for i = 1:length(Max)
    plot(Max(i)*ones(2,1),vertical, 'b')
end
for i = 1:length(Min)
    plot(Min(i)*ones(2,1),vertical, 'r')
end

