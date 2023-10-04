% Exact Integral
a=0;b=1;
f =@(x) exp(x).*cos(x);
exact = integral(f,a,b);
fprintf("\nExact intergral solution :%.6f\n ", exact)

% Approximate Integral with Romberg Extrapolation
syms x;
f =exp(x).*cos(x);

% Find no of extrapolation steps to get error value less than 10^-6
t = 1;
while abs(exact - romberg(f,a,b,t)) >= 0.000001
    t= t*2;
end

% Print the results
fprintf('\nAbsolute error less than 10^-6 is obtained after %d extrapolation steps\n',t)
fprintf("\nThus, approximate value by Romberg Extrapolation is %.8f\n", romberg(f,a,b,t))

