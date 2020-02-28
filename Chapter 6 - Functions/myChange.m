function [change] = myChange(cost, paid)
change(1,1) = nan;
if (paid-cost) >= 100
    change = [change(2:end); 100; myChange(cost, paid-100.)];
elseif (paid-cost) >= 50
    change = [change(2:end); 50; myChange(cost, paid-50.)];
elseif (paid-cost) >= 20
    change = [change(2:end); 20; myChange(cost, paid-20.)];
elseif (paid-cost) >= 10
    change = [change(2:end); 10; myChange(cost, paid-10.)];
elseif (paid-cost) >= 5
    change = [change(2:end); 5; myChange(cost, paid-5.)];
elseif (paid-cost) >= 1
    change = [change(2:end); 1; myChange(cost, paid-1.)];
elseif (paid-cost) >= 0.25
    change = [change(2:end); 0.25; myChange(cost, paid-0.25)];
elseif (paid-cost) >= 0.1
    change = [change(2:end); 0.1; myChange(cost, paid-0.1)];
elseif (paid-cost) >= 0.0499
    change = [change(2:end); 0.05; myChange(cost, paid-0.05)];
elseif (paid-cost) > 0.009
    change = [change(2:end); 0.01; myChange(cost, paid-0.01)];
elseif (paid-cost) < 0
end

if isnan(change(end)) == true()
    change = change(1:(end-1));
end

end
