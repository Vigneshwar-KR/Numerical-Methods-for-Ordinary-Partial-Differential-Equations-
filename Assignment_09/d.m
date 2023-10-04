%octave
% Define the right-hand side function
f = @(t, y) 2*t*(1 + y);

% Define the analytical solution
analytical_solution = @(t) exp(t.^2) - 1;

% Define the end time and step sizes
tend = 2;
h_values = [1, 0.5, 0.1, 0.01];

% Compute numerical solutions and plot the paths
figure;
hold on;
for i = 1:numel(h_values)
    h = h_values(i);
    [t, y_explicit] = explicitEuler(f, 0, tend, h);
    [t, y_improved] = improvedEuler(f, 0, tend, h);
    [t, y_eulerheun] = EulerHeun(f, 0, tend, h);

    % Plot numerical solutions
    plot(t, y_explicit, '-o', 'DisplayName', sprintf('Explicit Euler (h = %g)', h));
    plot(t, y_improved, '-^', 'DisplayName', sprintf('Improved Euler (h = %g)', h));
    plot(t, y_eulerheun, '-s', 'DisplayName', sprintf('Euler-Heun (h = %g)', h));
end

% Plot analytical solution
t_analytical = linspace(0, tend, 100);
y_analytical = analytical_solution(t_analytical);
plot(t_analytical, y_analytical, 'k', 'LineWidth', 1.5, 'DisplayName', 'Analytical Solution');

hold off;
xlabel('t');
ylabel('y');
title('Numerical Solutions for the Initial Value Problem');
legend('Location', 'Northwest');

