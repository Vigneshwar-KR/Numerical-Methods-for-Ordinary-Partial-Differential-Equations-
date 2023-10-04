% .m

function X = newton2d(F, x0)
    X = zeros(2, 50); 
    X(:, 1) = x0;  
    h = 1e-6;  
    tol = 1e-6;  

    figure;
    hold on;
    axis([-2 2 -2 2]);
    xlabel('x1');
    ylabel('x2');
    title('Newton Method Iterations');
    
   
    plot(x0(1), x0(2), 'ro', 'MarkerSize', 8);
    
    
    for i = 1:49
        x = X(:, i);
        
        J = [(F([x(1)+h; x(2)]) - F([x(1)-h; x(2)])) / (2*h), (F([x(1); x(2)+h]) - F([x(1); x(2)-h])) / (2*h)];

        

        
        x_new = x +  (J \ (-F(x)));
        X(:, i+1) = x_new;  
        
        
        plot([x(1) x_new(1)], [x(2) x_new(2)], 'b--');
        plot(x_new(1), x_new(2), 'ro', 'MarkerSize', 8);
        
       
        if norm(x_new - x) / norm(x) <= tol
            break;
        end
    end
    
    hold off;
    
    % Remove the unused columns from X
    X = X(:, 1:i+1);
end
