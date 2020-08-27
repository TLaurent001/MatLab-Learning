%Question8.m
%   Author: Thomas Laurent
%   Graph Ohm's law test

clear
close all
clc

% INPUT
V = [0.5,1,2,3,10];                     % Y-axis
I = [0.0052,0.009,0.021,0.03,0.105];    % X-axis

%GRAPH

plot(V,I); 
hold on
xlabel('I in Amps'); 
ylabel('V in Volts'); 
title('plot of Ohm''s law test data'); 