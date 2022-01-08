tspan=[0 500];
c0=[1,1,0.5];
[t,c] = ode23s(@odei,tspan,c0);
plot(t,c)
subplot(2,1,1)
lim=([0 .005]);
subplot(2,1,2)
plot(t,c);
lim=([0 500]);
function [c] = odei(t,c)
dc1 = [((-.013*(c(1)))-(1000*(c(1))*(c(3))))];
dc2 = [(-2500*(c(2))*(c(3)))];
dc3 = [((-.013*(c(1)))-(1000*(c(1))*(c(3)))-(2500*(c(2))*(c(3))))];
c = [dc1;dc2;dc3];
end
    