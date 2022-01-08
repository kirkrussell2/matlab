clc;clear;close all

syms beta gamma

n = 1:365;
delta = mean(23.45.*sind(2.*pi.*(284 + n)./365))
phi = 21;%latitude
w = 0;%use 0 b/c noon is a handy average - hr angle

[beta gamma] = meshgrid(0:90,0:90);%beta = tilt, gamma = azimuth
t = acosd((sind(delta).*sind(phi).*cosd(beta) - sind(delta).*cosd(phi).*sind(beta).*cosd(4.*gamma) 
+ cosd(delta).*cosd(phi).*cosd(beta).*cosd(w) + cosd(delta).*sind(phi).*sind(beta).*cosd(4.*gamma).*cosd(w) 
+ cosd(delta).*sind(beta).*sind(4.*gamma).*sind(w)));


mesh(beta,gamma,t)
xlabel("angle");
ylabel("azimuth");