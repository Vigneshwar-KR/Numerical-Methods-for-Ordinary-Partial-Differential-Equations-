% Ex 4.1 b)
%MATLAB
syms x
f= sin(x);

j= 1; t=1;
while abs(subdivides(f, 0, pi, j+1)-subdivides(f, 0, pi, j))>=  0.0001 || t <= 10

    if abs(subdivides(f, 0, pi, j+1)-subdivides(f, 0, pi, j)) <=  0.0001
        t= t+ 1;
    end

    j = j+1;

end

fprintf('%.8f\n', subdivides(f, 0, pi, j))


% Ex 4.1 c)
j_vector = 1:j;
dist = zeros(1,j);
for i = 1:j
    dist(i) = abs(subdivides(f, 0, pi, j) - subdivides(f, 0, pi, i));
end

plot(j_vector, dist ,'-o',  'MarkerEdgeColor', 'r')
xlabel("Number of Intervals 'J'");
ylabel("Distance btwn 'jth' & last computed value")


error("Computed values difference is smaller than 10^-4 reached")


