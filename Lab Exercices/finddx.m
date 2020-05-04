function [dx] = finddx(Y, limits, actual, tol, method)

%%% PHASE ALPHA %%% INITIALISATION

% You have to init dx for the first loop because we are comparing tol to
% dx

%%% OPTIONAL %%%

% actual1 = integral(Y,limits(1),limits(2)); Does not work for function
% without a x

%%% OPTIONAL %%%

delta = 1;
SumNumber = 0; 
if strcmp(method, 'riemann') == 1
    DDog = (abs(limits(2) - limits(1)))/delta;
    i = limits(1);
    while i < limits(2)
        SumNumber = SumNumber + Y(i)*DDog;
        i = i + DDog;
    end 
elseif strcmp(method, 'trapezoid') == 1
    DDog = (abs(limits(2) - limits(1)))/delta;
    i = limits(1);
    while i < limits(2)
        SumNumber = SumNumber + ((Y(i)+Y(i+DDog))/2)*DDog;
        i = i + DDog;
    end
elseif strcmp(method, 'simpson') == 1
    DDog = (abs(limits(2) - limits(1)))/(delta*2);
    i = 0;
    tempvar = limits(1)+DDog;
    while i < delta
        SumNumber = SumNumber + (DDog/3)*(Y(tempvar-DDog)+4*Y(tempvar)+Y(tempvar+DDog));
        tempvar = tempvar + 2*DDog;
        i = i + 1;
    end
else
    error('method entered is invalid, enter riemann, trapezoid, or simpson')
end

%%% PHASE BETA %%% FINDING A DX < TOL
test = SumNumber;
test0 = abs(test-actual);

if test0 >= tol
    computing = true();
else 
    computing = false();
end

    

while computing == true()
    delta = delta*2;
    SumNumber = 0;
    if strcmp(method, 'riemann') == 1
        DDog = (abs(limits(2) - limits(1)))/delta;
        for i  = limits(1):DDog:(limits(2)-DDog)
            SumNumber = SumNumber + Y(i)*DDog;
        end
        test = SumNumber;
        test0 = abs(test-actual);
        if test0 < tol
            computing = false();
        end
    elseif strcmp(method, 'trapezoid') == 1
        DDog = (limits(2) - limits(1))/delta;
        i = limits(1);
        while i < limits(2)
            SumNumber = SumNumber + ((Y(i)+Y(i+DDog))/2)*DDog;
            i = i + DDog;
        end
        test = SumNumber;
        test0 = abs(test-actual);
        if test0 < tol
            computing = false();
        end
    elseif strcmp(method, 'simpson') == 1
        DDog = (limits(2) - limits(1))/(delta*2);
        i = 0;
        tempvar = limits(1)+DDog;
        while i < delta
            SumNumber = SumNumber + (DDog/3)*(Y(tempvar-DDog)+4*Y(tempvar)+Y(tempvar+DDog));
            tempvar = tempvar + 2*DDog;
            i = i + 1;
        end
        test = SumNumber;
        test0 = abs(test-actual);
        if test0 < tol
            computing = false();
        end
    end
end


dx = DDog;
