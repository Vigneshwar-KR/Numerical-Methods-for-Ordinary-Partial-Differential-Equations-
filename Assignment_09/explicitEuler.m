% octave
function [t, y] = explicitEuler(f, y0, t_end, h)
    % number of steps
    N = round(t_end / h);

    % Initialize arrays for time and solution
    t = zeros(N+1, 1);
    y = zeros(N+1, 1);

    % initial conditions
    t(1) = 0;
    y(1) = y0;

    % explicit Euler method
    for i = 1:N
        t(i+1) = t(i) + h;
        y(i+1) = y(i) + h * f(t(i), y(i));
    end
end

