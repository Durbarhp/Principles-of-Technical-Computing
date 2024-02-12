% Values of 'a' getting close to 1
a_values = [0.9, 0.99, 0.999, 0.9999, 0.99999];

% Create a figure to plot the results
figure;
hold on;

for a = a_values
    % Define the matrix A for the current 'a' value
    A = [1, a; a, 1];
    
    % Generate points on the unit circle in x-direction
    x_unit_circle = linspace(-1, 1, 100); % Create 100 points along the unit circle
    
    % Calculate the corresponding y-values using y = Ax
    y_mapped = A(2, 1) * x_unit_circle + A(2, 2); % y = ax + b
    
    % Plot the mapped x-values
    plot(x_unit_circle, y_mapped, 'DisplayName', ['a = ', num2str(a)]);
end

title('Mapping of Unit Circle in X for y = Ax');
xlabel('X');
ylabel('Y');
legend('Location', 'best');
grid on;

hold off;
