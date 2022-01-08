#README.md

Numerical Differentiation with Unequally-Spaced Data Using Lagrange Interpolating Polynomial

Question:
Write your polynomial as an anonymous function and then use the anonymous function to estimate f'(x) at 10 equally-spaced values between x0 and x1, inclusive, and 10 equally-spaced values between x1 and x2, inclusive. (Use linspace)
For example, for input values of x0 = 1, x1 = 1.5 and x2 = 3, estimate f'(x) at x_e1 = linspace(1,1.5,10) and x_e2 = linspace(1.5, 3, 10).
Details of user-defined function:

INPUTS: 
x - a row vector containing 3 points: x0, x1, and x2
f - the anonymous function f(x), which derivatives will be approximated to

OUTPUTS: 
dfx - one row vector containing estimates of f'(x) at x_e1 and x_e2. (i.e. size of dfx will be 20. Note that the middle value will be repeated, since you will be evaluating it twice)
Function Name: num_diff_Lagrange 
