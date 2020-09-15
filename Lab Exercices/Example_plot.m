clear;clc;close all;

X = [0,1,2,3,4,6,7,8,10];
Y = [1,4,5,4,-3,2,-5,20,4];

%figure(1) % creates a new figure to plot on
%plot(X,Y, 'k') % k = black color :k = dotted black --b = dashed black. 
% The same goes for markers.
% plot(X,Y, 'color', 'b', 'LineStle', '--', 'Marker', 'x')

X1 = 0:pi:3*pi;
X2 = 0:pi/2:3*pi;
X3 = 0:pi/10:3*pi;
X4 = 0:pi/100:3*pi;

figure(2)
hold on %notgonna overwrite your plot
plot(X1,sin(X1), '-ok', 'linewidth', 1.5)
plot(X2,sin(X2), '--.b', 'linewidth', 1.5)
Y3 = sin(X3);
plot(X4,sin(X4), 'm', 'linewidth', 1.5)
plot(X3,Y3, ':*g', 'linewidth', 2)
title('Aproximation of Sine fucntion')
xlabel('x')
ylabel('y=sin(x)')
legend('dx = pi','dx = pi/2','dx = pi/10','dx = pi/100', 'Location', 'SE')
set(gca, 'Xlim', [0 3*pi], 'Ylim', [-1.1,1.1])
%gca = grab/get current axes

figure(4)
subplot(4,1,1)
% (num of rows of subplots,num of cols of subplots,subplot you want plot on)
plot(X1,sin(X1), '-ok', 'linewidth', 1.5)
set(gca, 'Xlim', [0 3*pi], 'Ylim', [-1.1,1.1])
title('Step size = \pi')
ylabel('y=sin(x)')

subplot(4,1,2)
plot(X2,sin(X2), '-ok', 'linewidth', 1.5)
set(gca, 'Xlim', [0 3*pi], 'Ylim', [-1.1,1.1])
title('Step size = \pi/2')
ylabel('y=sin(x)')

subplot(4,1,3)
plot(X3,Y3, '-ok', 'linewidth', 2)
set(gca, 'Xlim', [0 3*pi], 'Ylim', [-1.1,1.1])
title('Step size = \pi/10')
ylabel('y=sin(x)')

subplot(4,1,4)
plot(X4,sin(X4), 'k' , 'linewidth', 1.5)
set(gca, 'Xlim', [0 3*pi], 'Ylim', [-1.1,1.1])
title('Step size = \pi/100')
ylabel('y=sin(x)')
xlabel('x')
