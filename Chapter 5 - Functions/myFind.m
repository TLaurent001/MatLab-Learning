function [ind] = myFind(B)
ind = nan;
i = 1;
t = size(B);

while i <  (t(1)*t(2))+ 1
    if B(i) == 1
        ind = [ind, i];
    end
    i = i + 1;
end

ind = ind(2:end);
end
