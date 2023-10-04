#Octave
function T = mesh_2(N)
% Generate triangle mesh using the second subdivision technique
% Initialize triangle array
T = zeros(2*N, 3, 2);

% Generate triangles
for i = 1:N
    theta = 2*pi*i/N;

    % First triangle
    T(i, 1, :) = [0, 0];
    T(i, 2, :) = [2*cos(theta), 2*sin(theta)];
    T(i, 3, :) = [2*cos(theta+2*pi/N), 2*sin(theta+2*pi/N)];

    % Second triangle
    T(i+N, 1, :) = [0, 0];
    T(i+N, 2, :) = [2*cos(theta+2*pi/N), 2*sin(theta+2*pi/N)];
    T(i+N, 3, :) = [2*cos(theta), 2*sin(theta)];
end

end

