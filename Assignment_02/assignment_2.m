
% Temperature of value 0 to 80
T=0:80;

% Call thermometer function to determine the Height parameter
h=thermometer(T);

% Create dataset X for regression function
X = [T ; h];
[alfa, beta] = regression(X);

% Form the linear equation with Coefficients
fn = alfa + beta* T;

% Plot the graph
plot(T,h,'.',MarkerSize=8)
xlabel("Temperature 'T'");
ylabel("Height 'h'")
hold on
plot(T,fn)

