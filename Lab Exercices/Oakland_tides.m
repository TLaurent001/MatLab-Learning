clear;clc;close all;

file = 'lab8_OAKtides.txt';
%file should be the name of the text file
% if the text file is stored in the same folder as your script as instructed, you 
% do not need to put the file location 

fileID = fopen(file);
%this opens the file in MATLAB 

C = textscan(fileID, '%f %f %f %f %f %f %f', 'headerlines', 6);

% this reads the file into MATLAB 
% the %f indicates that the data in that particular column is a floating 
% point double precision number
% headerlines indicates the number of lines you want to skip at the top of 
% the text file
t = datenum([C{1} C{2} C{3} C{4} C{5} C{6}]);
% datenum takes as the input a date vector which is formatted as 
% [year month day hour minute second]
% You can make a vector of your tidal elevation by typing 
y = C{7}; 

figure(1)

subplot(3,1,1)
plot(t,y, 'k', 'linewidth', 1.2)
set(gca, 'XLim', [t(1) t(end)], 'YLim', [-0.5 2.5])
datetick('x', 'mm/dd')
ylabel('y (m)')
title('First and Second Derivatives of Tidal Elevation (y)')

% Beginner Friendly way to do it
% y1 = zeros(1,length(t));
% for i = 1:length(t)-1
%     y1(i) = (y(i+1)-y(i))/(t(i+1)-t(i));
% end

% But this is way easier
dydx = gradient(y(:)) ./ gradient(t(:));

subplot(3,1,2)
plot(t,dydx, 'k', 'linewidth', 1.2)
set(gca, 'XLim', [t(1) t(end)])
datetick('x', 'mm/dd')
ylabel('dy/dt (m/s)')


% Beginner Friendly way to do it
% y2 = zeros(1,length(t));
% for i = 1:length(t)-1
%     y2(i) = (y1(i+1)-y1(i))/(t(i+1)-t(i));
% end

% But again this is way easier

DyDx2 = gradient(dydx(:)) ./ gradient(t(:));

subplot(3,1,3)
plot(t,DyDx2, 'k', 'linewidth', 1.2)
datetick('x', 'mm/dd')
ylabel('d^2y/dt^2 (m/s^2)')
xlabel('Time')

