function [M] = myMatMult(P,Q)

% This is a cool function

msofP = size(P);
msofQ = size(Q);
M = zeros(msofP(1),msofQ(2));

for m = 1:(msofP(1))
    for n = 1:msofQ(2)
        tempvar = 0;
        for k = 1:msofP(2)
             tempvar = tempvar + P(m,k)*Q(k,n);
        end
        M(m,n) = tempvar;
    end
end




end

            