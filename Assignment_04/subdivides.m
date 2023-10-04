%MATLAB
function barrel_rule = subdivides(f, a, b, J)
syms x;
SubInt = linspace(a,b, J+1);

h = (b-a)/J;

f_x = 0;
for i = 2:J
    f_x = f_x + double(subs(f,x,SubInt(i)));
end

f_mean = 0;
for i = 1:J
    f_mean = f_mean + double(subs(f,x, (SubInt(i)+SubInt(i+1))/2));
end

f_0 = double(subs(f,x, SubInt(1)));
f_J = double(subs(f,x, SubInt(J+1)));


barrel_rule = (h/6)*(f_0 + f_J + 2*f_x + 4*f_mean);


