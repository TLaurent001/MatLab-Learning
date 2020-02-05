function [years] = mySavingPlan(P0,i,goal)
n = 1;
while P0 < goal
    P0 = P0*(1+i);
    n = n+1;
end

years = n;

end
