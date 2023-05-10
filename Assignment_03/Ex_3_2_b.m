% Create integral function f(x) = sin(x)
syms x
f=@(x) sin(x);
a=1; b= 3; n = 10;

% Calculate the value by monte_carlo function (we defined)
I = monte_carlo(f,a,b,n);

% Display the value
disp(I)

% No, we get different values because 'randi' function takes different
% random variables each time.


% Ex 3.2 b)
N = 10:10:1000;
I_actual = integral(f,a,b);

Error= zeros(size(N));

for i = 1: length(N)
    Error(i) = abs(I_actual-monte_carlo(f,a, b,N(i)));

end
subplot(2,1,1)
plot(N, Error)
title("Plot function")
xlabel("N")
ylabel("Error")

subplot(2,1,2)
loglog(N, Error, 'r')
title("loglog function")
xlabel("N")
ylabel("Error")


% The plot() function plots the data in a linear scale.
% the loglog() function creates a logarithmic plot of the data.This is 
% useful when dealing with data that spans a large range of values, as it
% allows you to better visualize the entire range of the data.
