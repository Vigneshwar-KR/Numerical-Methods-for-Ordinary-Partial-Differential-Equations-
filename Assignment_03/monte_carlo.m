function I = monte_carlo(f, a, b, N)

syms x
I=0;

% Calculate the sum of function of random variables
for i = 1:N
    I = I + double(subs(f(x), x, randi([a,b])));
end

% Mean of the sum values
I = I * (b-a)/N;
