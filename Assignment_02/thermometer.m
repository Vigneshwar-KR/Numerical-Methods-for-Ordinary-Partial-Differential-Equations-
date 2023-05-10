function h = thermometer(T)

% Calculate the height 'h' with Actual relation
h_actual = 2+(1/5)*T;

% Set the Seed to generate the same random numbers for each execution
rng(1)

% Add noise in range (-0.75, 0.75) 
Max_value= 0.75;
Min_value= -0.75;
Error = Min_value + (Max_value-Min_value)*rand();

h = h_actual + Error;