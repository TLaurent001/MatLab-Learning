x = 0:0.1:3.6;
func1 = @(t) (1000/(200*6.87*10^3))*((0.4333*t^3)-(2.692*t));
func2 = @(t) (1000/(200*6.87*10^3))*((-0.0625*((t-0.6)^4))+(0.4333*t^3)-(0.2*((t-0.6)^3))-(2.692*t));
func3 = @(t) (1000/(200*6.87*10^3))*((-0.0625*((t-0.6)^4))+(0.0625*((t-1.8)^4))+(0.4333*t^3)-(0.2*((t-0.6)^3))-(2.692*t));
func4 = @(t) (1000/(200*6.87*10^3))*((-0.0625*((t-0.6)^4))+(0.0625*((t-1.8)^4))+(0.4333*t^3)-(0.2*((t-0.6)^3))-(0.72*((t-2.6)^2))-(2.692*t));

y = zeros(1,length(x));

for i = 1:length(x)
    if x(i) < 0.6
        y(i) = func1(x(i));
    elseif x(i) >= 0.6 && x(i) < 1.8
        y(i) = func2(x(i));
    elseif x(i) >= 1.8 && x(i) < 2.4
        y(i) = func3(x(i));
    elseif x(i) >= 2.4
        y(i) = func4(x(i));
    end
end

figure;
hold on
plot(x,y,'-k','linewidth', 2)
title('Estimation of deflection in beam')
ylabel('y', 'fontweight', 'b')
xlabel('x', 'fontweight', 'b')
set(gca, 'fontsize', 16)