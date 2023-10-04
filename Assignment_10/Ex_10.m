
% .m file

A = [4 -6; -31 189];
y0 = [1  20];
h = [0.01 0.02];
t_end =2;

[t_exp1 , y_exp1] = explicitEulerVector(A, y0, t_end, h(1));
subplot(2,2,1)
plot(t_exp1, y_exp1(:,1))
hold on;
plot(t_exp1, y_exp1(:,2), '-r' )
xlim([0 t_end]);
xlabel('t');
ylabel('y');
title("Explicit Euler Method & h = 0.01 ")
legend("y1", "y2")
hold off


[t_exp2 , y_exp2] = explicitEulerVector(A, y0, t_end, h(2));
subplot(2,2,2)
plot(t_exp2, y_exp2(:,1) )
hold on;
plot(t_exp2, y_exp2(:,2), '-r')
xlim([0 t_end]);
xlabel('t');
ylabel('y');
title("Explicit Euler Method & h = 0.02 ")
legend("y1", "y2")
hold off;

[t_imp1 , y_imp1] = implicitEulerVector(A, y0, t_end, h(1));
subplot(2,2,3)
plot(t_imp1, y_imp1(:,1) ) 
hold on;
plot(t_imp1, y_imp1(:,2), '-r');
xlim([0 t_end]);
xlabel('t');
ylabel('y');
title("Implicit Euler Method & h = 0.01 ")
legend("y1", "y2")
hold off;

[t_imp2 , y_imp2] = implicitEulerVector(A, y0, t_end, h(2));
subplot(2,2,4)
plot(t_imp2, y_imp2(:,1) ) 
hold on;
plot(t_imp2, y_imp2(:,2), '-r') 
xlim([0 t_end]);
xlabel('t');
ylabel('y');
title("Implicit Euler Method & h = 0.02 ")
legend("y1", "y2")
hold off;

