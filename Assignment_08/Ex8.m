% .m 
% Define the function F
F = @(x) [ ...
    exp(-exp(-(x(1) + x(2)))) - x(2) * (1 + x(1)^2); ...
    x(1) * cos(x(2)) + x(2) * sin(x(1)) - 1/2 ...
];

% Set the initial guess
x0 = [0; 0];

% Call the newton2d function
X = newton2d(F, x0);

% Print the computed numerical solution and F(x)
x_approx = X(:, end);
F_approx = F(x_approx);
disp('Computed Numerical Solution:');
disp(x_approx);
disp('F(x) at Computed Numerical Solution:');
disp(F_approx);
