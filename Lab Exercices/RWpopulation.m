function RWpopulation(R_initial, W_initial)

a = 0.2;
b = 0.001;
c = 0.001;
d = 0.5;
h = 0.1;
t = 1:h:100;
R = zeros(length(t),1);
W = zeros(length(t),1);
R(1) = R_initial;
W(1) = W_initial;



for i = 1:length(t)-1
    R(i+1) = R(i) + h*(a*R(i) - b*R(i)*W(i));
    W(i+1) = W(i) + h*(c*R(i)*W(i) - d*W(i));
end

figure
subplot(1,2,1)
plot(t,R,'--k',t,W,':k','linewidth',2) 
title('Population over time') 
xlabel('Time')
ylabel('Population')
legend('Rabbits','Wolves','Location','NW')

subplot(1,2,2)
plot(R,W,'k','linewidth',2) 
title('Circle of Life') 
xlabel('Rabbits')
ylabel('Wolves')
axis equal






