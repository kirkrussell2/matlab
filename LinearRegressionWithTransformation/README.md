#README.md

Quesiton:
Write a function named transformedLS, that given (x, y) data points performs a linear least squares regression using normal equations and returns coefficients of best line of fit, coefficient of determination r2, and a plot of best line of fit overlaid with the given data points.

linearize data according to the desired model (exponential, power, or saturation-growth-rate), performs linear regression, and returns coefficients of best line of fit (a0 and a1), coefficient of determination r2, model parameters (α and β), a plot of best line of fit overlaid with the transformed data, and a second plot of original data overlaid with curve of model equation. See equations 14.22, 14.23, and 14.24 in the textbook for the model equations

The function inputs are:
x - an array of x coordinates
y - an array of y coordinates

model - the name of the model to use, with valid inputs options for the model input shoud be 'exp' for a exponential fit, 'pow' for a power fit, or 'sat' for a saturation-growth-rate fit
and outputs are:
a0 - the transformed linear intercept coefficients for the linear best fit   (ex. ln(alpha) for an logarithm fit)
a1 - the transformed liner slope coefficient for the linear best fit    (ex. beta for an logarithm fit)
alpha - first model parameter (as in equations 14.22, 14.23, and 14.24 as appropriate)
beta - second model parameter (as in equations 14.22, 14.23, and 14.24 as appropriate)
r2 - the coefficient of determination

