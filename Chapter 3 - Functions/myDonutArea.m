function [A] = myDonutArea(r1,r2)

%Note: r2>r1 and both circles have the same center

if r2>1
    A =  (pi*(r2.*r2))-(pi*(r1.*r1));
else
    error('r2 must be greater then r1')
end
end