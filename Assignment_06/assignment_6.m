#octave
% function f(x, y) is defined
f = @(x, y) 1 - x.^2 - y.^2;

% the exact value of the integral I(f) over the circle B2(0)
I_exact = pi * 2^2;

% Define the number of triangle corners hitting the boundary
Corners = [10, 100, 1000];

% Compute composite quadrature QN(f) for different N values
for N = Corners
    % Generate the triangle mesh using mesh_1
    T1 = mesh_1(N);

    % Compute the quadrature Q(f) for mesh_1
    Q_1 = 0;
    for i = 1:N
        triangle = reshape(T1(i, :, :), [3, 2]);
        Q_1 = Q_1 + quadrature_rule(triangle, f);
    end

    % Generate the triangle mesh using mesh_2
    T2 = mesh_2(N);

    % Compute the quadrature Q(f) for mesh_2
    Q_2 = 0;
    for i = 1:2*N
        triangle = reshape(T2(i, :, :), [3, 2]);
        Q_2 = Q
