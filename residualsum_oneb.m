% Define the coefficient matrix A and the right-hand side vector b
A = [2, 3, -1; 4, -2, 3; 1, 1, 1; 3, -1, 2];
b = [5; 10; 3; 8];

% Calculate the least-squares solution
x_leastsq = (A' * A) \ (A' * b);

% Calculate the predicted values (A * x_leastsq)
predicted_values = A * x_leastsq;

% Calculate the residuals
residuals = b - predicted_values;

% Calculate the residual sum of squares (RSS)
RSS = sum(residuals.^2);

disp(['Residual Sum of Squares (RSS): ', num2str(RSS)]);
