clear; close all; clc; 
load SPB1983.mat 

figure(1) 
surf(x,y,z);
shading interp
colorbar
colormap winter

figure(2)
h = pcolor(x,y',z);
set(h, 'EdgeColor', 'none');
colorbar
colormap winter

figure(3)
contour(x,y,z)
colorbar
colormap winter

figure(4)
contourf(x,y,z)
colorbar
colormap winter

