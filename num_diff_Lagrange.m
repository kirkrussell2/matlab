function [dfx] = num_diff_Lagrange(x,f)
xe = [linspace(x(1),x(2),10) linspace(x(2),x(3),10)];
for n=1:20
   a = f(x(1))* (2.*xe(n) - x(2) - x(3))/((x(1)-x(2))*(x(1)-x(3))); 
   b = f(x(2))* (2.*xe(n) - x(1) - x(3))/((x(2)-x(1))*(x(2)-x(3))); 
   c = f(x(3))* (2.*xe(n) - x(1) - x(2))/((x(3)-x(1))*(x(3)-x(2)));
   dfx(1,n)=a+b+c
end
end