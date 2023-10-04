function [t, y] = implicitEulerVector(A, y0, tend, h)
    % Number of steps
    N = floor(tend / h);

    % Initialize output arrays
    t = zeros(N+1, 1);
    y = zeros(N+1, numel(y0));
    y(1, :) = y0;

    % Compute solution
    for i = 1:N
        t(i+1) = t(i) + h;
        y(i+1, :) = (eye(size(A)) - h * A) \ y(i, :)';
    end
end
