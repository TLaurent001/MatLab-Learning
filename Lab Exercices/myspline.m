function [out] = myspline(x,y, x_estimate)

n = length(x);
F = zeros(4*(n-1));
p = zeros(4*(n-1),1);

%%% MEGAPHASE - ALPHA - THE F MATRIX %%%

%%% PHASE 1 %%%
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

%%% MEGAPHASE - CHARLIE - THE ENDGAME %%%

B = inv(F)*p;

%reset c.
c = 1;
y_estimate = zeros(1,length(x_estimate));
for i = 1:length(x_estimate)
    c = 1;
    for r = 1:n-1
        if  x(c) <= x_estimate(i) && x_estimate(i) <= x(c+1)
            hello = x_estimate(i);
            hello2 = x(c);
            y_estimate(i) = B((c*4)-3)*x_estimate(i)^3 + B((c*4)-2)*x_estimate(i)^2 + B((c*4)-1)*x_estimate(i) + B((c*4));
        end
        c = c +1;
    end
end

plot(x,y, '.k', 'markersize', 15)
hold on
plot(x_estimate, y_estimate, '.-k')
title('Spline Interpolation')

xlabel('X Data')
ylabel('Y Data')
legend('Actual Data','Interpolated Data','Location', 'NE')
out = y_estimate;








