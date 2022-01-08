function [a0, a1, alpha, beta, r2] = transformedLS(x,y,model)
if model == 'exp'
y=log(y)
n = length(x);
x = x(:);
y = y(:);    
sx = sum(x); sy = sum(y);
sx2 = sum(x.*x); sxy = sum(x.*y); 
sy2 = sum(y.*y);
a(1) = (n*sxy - sx*sy)/(n*sx2-sx^2);
a(2) = sy/n - a(1)*sx/n;
r2 = ((n*sxy - sx*sy)/sqrt(n*sx2 - sx^2)/sqrt(n*sy2 - sy^2))^2;
xp = linspace(min(x),max(x),2);
yp = a(1)*xp + a(2);
plot(x,y,'o',xp,yp)
grid on
a0 = a(2);
a1= a(1);
alpha=exp(a0);
beta=a(1);
elseif model == 'pow'
y=log10(y);
x=log10(x);
n = length(x);
x = x(:);
y = y(:);    
sx = sum(x); sy = sum(y);
sx2 = sum(x.*x); sxy = sum(x.*y); 
sy2 = sum(y.*y);
a(1) = (n*sxy - sx*sy)/(n*sx2-sx^2);
a(2) = sy/n - a(1)*sx/n;
r2 = ((n*sxy - sx*sy)/sqrt(n*sx2 - sx^2)/sqrt(n*sy2 - sy^2))^2;
xp = linspace(min(x),max(x),2);
yp = a(1)*xp + a(2);
plot(x,y,'o',xp,yp)
grid on
a0 = a(2);
a1= a(1);
alpha=10^a0;
beta=a1;
elseif model == 'sat'
y= 1./y;
x= 1./x;
n = length(x);
x = x(:);
y = y(:);    
sx = sum(x); sy = sum(y);
sx2 = sum(x.*x); sxy = sum(x.*y); 
sy2 = sum(y.*y);
a(1) = (n*sxy - sx*sy)/(n*sx2-sx^2);
a(2) = sy/n - a(1)*sx/n;
r2 = ((n*sxy - sx*sy)/sqrt(n*sx2 - sx^2)/sqrt(n*sy2 - sy^2))^2;
xp = linspace(min(x),max(x),2);
yp = a(1)*xp + a(2);
plot(x,y,'o',xp,yp)
grid on
a0 = a(2);
a1= a(1);
alpha=1/a0;
beta=a1*alpha;
end