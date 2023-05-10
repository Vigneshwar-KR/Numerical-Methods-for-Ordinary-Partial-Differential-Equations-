
% Function trapez with f: Expression, a: Lower limit, b: Upper limit.
function Q = trapez(f,a,b)

syms x;

% Substitute a & b value in the Expression 'f'
f_a = double(subs(f,x,a));
f_b = double(subs(f,x,b));

% Calculate the approximate value by Trapezoid rule
Q = double((b-a)/2 * (f_a +f_b));




