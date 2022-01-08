tspan=[0:.1:20];
m =[12000 10000 8000];
k=[3000 2400 1800];
y0 = [0 0 0 1 0 0];
syms x1(t) x2(t) x3(t);
f(1) = diff(x1,2) == -k(1)/m(1)*x1 + k(2)/m(1) * (x2-x1)
f(2) = diff(x2,2) == k(2)/m(2) * (x1-x2)+k(3)/m(2) * (x3-x2)
f(3) = diff(x3,2) == k(3)/m(3) * (x2-x3)
V = odeToVectorField(f);
M = matlabFunction(V,'vars',{'t','Y'})
[t,y] = ode45(M,tspan,y0);
vel1=y(:,4);
vel2=y(:,2);
vel3=y(:,6);
disp1 = y(:,3);
disp2 = y(:,1);
disp3 = y(:,5);
plot(t,y)
xlabel('vel');
ylabel('disp');
legend('my graph');
lim=([0 500]);