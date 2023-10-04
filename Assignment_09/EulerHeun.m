% octave
function [t, y] = EulerHeun(f, y0, t_end, h)
    % number of steps
    N = round(t_end / h);

    % Initialize arrays for time and solution
    t = zeros(N+1, 1);
    y = zeros(N+1, 1);

    % initial conditions
    t(1) = 0;
    y(1) = y0;

    % Euler-Heun method
    for i = 1:N
        t(i+1) = t(i) + h;
        k1 = h * f(t(i), y(i));
        k2 = h * f(t(i+1), y(i) + k1);
        y(i+1) = y(i) + 0.5 * (k1 + k2);
    end
end

