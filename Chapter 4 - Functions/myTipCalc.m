function [tip] = myTipCalc(bill, party)

if party < 6
    tip = bill*0.15;
elseif party < 8
    tip = bill*0.18;
elseif party < 11
    tip = bill*0.20;
else
    tip = bill*0.20;
end

end