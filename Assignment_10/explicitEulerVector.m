% .m File

function [t, y] = explicitEulerVector(A, y0, t_end, h)

    N = floor(t_end / h);

    t = zeros(N+1, 1);
    y = zeros(N+1, numel(y0));
    y(1, :) = y0;

    % Compute solution
    for i = 1:N
        t(i+1) = t(i) + h;
        y(i+1, :) = y(i, :) + (h * (-A * y(i, :)'))';
    end
end
