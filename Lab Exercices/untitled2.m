%function y_estimate = myspline(x,y,x_estimate) 
%%%%%BE SURE TO UNCOMMENT FIRST LINE BEFORE TUNING IN CODE



%%%%PUT IN AN EXAMPLE EHRE
%%%MAKE SURE TO CMMENT OUT ALL OF THESE LINES BEFORE TURNING IN YOUR
%%%ASSIGNMENT
clear; close all; clc;



x = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];
y = [0, 4, 6, 7, 3, 2, 1, -4, 2, 1];
x_estimate =1:0.1:10; 



%%%%%

n = length(x); 
F = zeros(4*(n-1),4*(n-1));

%p array is the rigth hand side of all of our equations
p = zeros(4*(n-1),1);

%first condition takes up the first n-1 rows

%program the second condition 
%second condition starts on row (n-1) + 1 
c = 1;


c = 1;
for i = 1:n-1  
    F(i, c) = x(i)^3;
    F(i, c+1) = x(i)^2;
    F(i, c+2) = x(i);
    F(i, c+3) = 1;
    c = c+4;
end
%reset c after each phase.
c = 1;
%%% PHASE 2 %%%
for i = 1:n-1  
    F(n-1+i, c) = x(i+1)^3;
    F(n-1+i, c+1) = x(i+1)^2;
    F(n-1+i, c+2) = x(i+1);
    F(n-1+i, c+3) = 1;
    c = c+4;
end
%reset c after each phase.
c = 1;
%%% PHASE 3 %%%
for i = 1:n-2  
    F((2*(n-1))+i, c) = (x(i+1)^2)*3;
    F((2*(n-1))+i, c+1) = 2*(x(i+1));
    F((2*(n-1))+i, c+2) = 1;
    F((2*(n-1))+i, c+4) = -1*((x(i+1)^2)*3);
    F((2*(n-1))+i, c+5) = -1*(2*(x(i+1)));
    F((2*(n-1))+i, c+6) = -1;
    c = c+4;
end
%reset c after each phase.
c = 1;
%%% PHASE 4 %%%
    
for i = 1:n-2  
    F((2*(n-1))+(n-2)+i, c) = (x(i+1))*6;
    F((2*(n-1))+(n-2)+i, c+1) = 2;
    F((2*(n-1))+(n-2)+i, c+4) = (x(i+1))*-6;
    F((2*(n-1))+(n-2)+i, c+5) = -2;
    c = c+4;
end
%reset c after each phase.
c = 1;
%%% FINAL PHASE %%%
for i = 1:1
    F((2*(n-1))+(2*(n-2))+i, c) = (x(i))*6;
    F((2*(n-1))+(2*(n-2))+i, c+1) = 2;
end
for i = 1:1
    F((2*(n-1))+(2*(n-2))+1+i, (4*n)-7) = (x(n))*6;
    F((2*(n-1))+(2*(n-2))+1+i, (4*n)-6) = 2;
end


%%% MEGAPHASE - BRAVO - THE P MATRIX %%%

for i = 1:n-1
    p(i,1) = y(i);
end

for i = 1:n-1
    p((n-1)+i,1) = y(i+1);
end
        
B = inv(F)*p;

%use coefficients to calculate the y_estimate values
m = reshape(B,[4,n-1]);
q = 1;
for i = 1:length(x_estimate)
    
    equals = find(x_estimate(i)==x);

    if isempty(equals)==0
        %this will be true if equals is not empty which means x_estimate
        %matches one of the x values
        y_estimate(i) = y(equals);
    else 
        left = find(x_estimate(i) > x);
        q = left(end)
    end
%im not sure whats going wrong here, maybe I input the wrong thing or
%something. This should give me my y-estimates
y_estimate(i) = m(1,q)*x_estimate(i)^3 + m(2,q)*x_estimate(i)^2 + m(3,q)*x_estimate(i) + m(4,q)

end


plot(x,y,'.k','markersize',15)
hold on 
plot(x_estimate,y_estimate,'.-k')
%title('Spline Interpolation')
%xlabel('x data')
%ylabel('y data')
%legend('data', 'Spline Interpolation')

%i tried a good chunk of time trying to make this work, that sucks


