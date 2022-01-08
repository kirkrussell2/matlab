x = [0, 1, 2, 3, 4, 5]';
y = [2.1, 7.7, 13.6, 27.3, 40.9, 61.1]';
% Make the Z matrix, using a basis of [1, x, x^2]
Z = [ones(size(x)), x, x.^2]
% Solve
[a, r2] = generalLS(Z,y);
% plot
plot(x, y, 'o')
hold on
xl = linspace(0, 5);
plot(xl, polyval(a,t))