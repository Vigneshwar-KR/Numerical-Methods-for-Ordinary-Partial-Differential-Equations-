% .m file


syms x
f= sin(x);

points = [0,pi, 3*pi/2];
slope_values = diff_quot(f,points,0.00001,"central");

b = double(subs(f,x,points)) - slope_values .* points; 

fplot(f,[-3*pi,3*pi], 'LineWidth',2);
hold on

for i=1:3
    fplot(slope_values(i)*x + b(i));
    hold on
end
legend('f(x)= sin(x)', 'Tangent @ x=0', 'Tangent @ x=pi', 'Tangent @ x=3*pi/2');
xlim([-1 2*pi]);
grid on
xlabel('x')