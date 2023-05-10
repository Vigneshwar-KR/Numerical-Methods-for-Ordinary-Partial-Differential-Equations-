% Create integral function f(x) = exp(x)
syms x
f =@(x) exp(x);
a=0; b=1;

% Calculate the value by trapez function (we defined)
q = trapez(f(x),a,b);
fprintf(" Value by trapez funtion (we defined): %.4f\n ",q);

% Calculate the value by intergral function (In-built)
q=integral(f,a,b);
fprintf("Value by integral funtion : %.4f\n ",q);

% Calculate the value by trapz function (In-built)
x= a:b;
q= trapz(x,f(x));
fprintf("Value by trapz funtion : %.4f\n ",q);


%  - Trapez function, which we defined, is the same as 'trapz' in-built
%  function. They show an approximate value with alot of errors
%  - 'integral' function shows the more accurate value.
%  - In this case, integral function value : 1.7183
%  Actual value : 1.7182818


