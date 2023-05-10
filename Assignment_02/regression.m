function [alfa, beta] = regression(X)

% Separating Temp & Height data points
t1 = X(1 , :);
h1 = (X(2 , :))';

% Creating the Matrix A
o = ones(size(t1));
A = [o ; t1]';

% Calculate the coeff by A'*A * Coeff = A'y 
A_h1 = A'* h1;
coeff = (A'* A) \ (A_h1);

% Returning the coeff Alfa and Beta
alfa= coeff(1);
beta = coeff(2);

