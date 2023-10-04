function approx = romberg(f, a, b, n)
syms x;


f_a = double(subs(f,x, a));
f_b = double(subs(f,x, b));
h=b-a;

if n == 1
    approx = (h/2) * (f_a + f_b);
    return
end
Qj = zeros([1, n/2]);
Qj(1) = (h/2) * (f_a + f_b);

for i= 1:(n-1)/2
    J = (2^i)+1;
    h= (b-a)/(2^i);
    subint = linspace(a,b, J);
    f_mean = zeros([1, n/2]);
    for j = 2:J-1
            f_mean(i+1) = f_mean(i+1) + double(subs(f,x,subint(j)));
    end
    Qj(i+1)= (h/2)*(f_a + 2* f_mean(i+1) + f_b);
end


if n ==2
    approx = Qj;
else

        
    value = zeros([1, length(Qj)]);
    
    q=2;
    while length(value) >1
        for k= 1:(n/2)-1
            value(k) = ((2^q)*(Qj(k+1))- Qj(k))/((2^q) -1);  
        end
        
        value = value(1, end-1);
        q=q+2;
    end
    
    
    approx = value;
end







