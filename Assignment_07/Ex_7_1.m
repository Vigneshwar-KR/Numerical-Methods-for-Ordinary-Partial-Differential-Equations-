% .m file


syms x
f= sin(x);
% Loop for different N
for N = 2:100
    nodes = linspace(0,2*pi,N);
    h= nodes(2) - nodes(1);
    for_value = zeros(1,N);
    back_value = zeros(1,N);
    cen_value = zeros(1,N);

    % Compute the difference quotients at each grid point
    for i=1:N

        for_value(i) = diff_quot(f,nodes(i),h,"forward");
        back_value(i) = diff_quot(f,nodes(i),h,"backward");
        cen_value(i) = diff_quot(f,nodes(i),h,"central");
        
    end
    % Plot the values 
    plot(nodes, for_value,'r-', 'linewidth',1)
    hold on;
    plot(nodes, back_value,'g-', 'LineWidth',1)
    plot(nodes, cen_value,'b-' ,'linewidth',1)
    legend('Forward', 'Backward', 'Central')
    xlabel('Nodes')
    
    % Denote the N value in every frame
    txt = annotation('textbox', [ 0.8 0.1 0.1 0.1], 'String', num2str(N),'Color', 'red');
    
    % Pause and clear the cuurent plot to create the Animation effect
    pause(0.1);
    clf;
end