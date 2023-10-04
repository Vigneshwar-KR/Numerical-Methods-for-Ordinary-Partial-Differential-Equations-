% .m file

function value = diff_quot(f, X, h, method)
syms x;
f_x1 = double(subs(f,x, X));

if method == "forward"
    f_x2 = double(subs(f,x, X+h));
    value = (f_x2 - f_x1)/h;
end

if method == "backward"
    f_x0 = double(subs(f,x, X-h));
    value = (f_x1 - f_x0)/h;
end

if method == "central"
    f_x2 = double(subs(f,x, X+h));
    f_x0 = double(subs(f,x, X-h));
    value = (f_x2 - f_x0)/(2*h);
end
