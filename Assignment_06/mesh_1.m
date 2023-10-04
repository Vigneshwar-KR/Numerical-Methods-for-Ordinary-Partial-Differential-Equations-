#octave
function T = mesh_1(N)
% Generate triangle mesh using the first subdivision technique
% Initialize triangle array
T = zeros(N, 3, 2);

% Generate triangles
for i = 1:N
    theta = 2*pi*i/N;

    % Triangle corners
    T(i, 1, :) = [0, 0];
    T(i, 2, :) = [2*cos(theta), 2*sin(theta)];
    T(i, 3, :) = [2*cos(theta+2*pi/N), 2*sin(theta+2*pi/N)];
end

end

