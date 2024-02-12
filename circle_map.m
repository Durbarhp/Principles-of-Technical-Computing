% Values of 'a'  close to 1
a_value = [0.9, 0.99, 0.999, 0.9999, 0.99999];

% Create a figure to plot the results
figure;
hold on;

for a = a_value
    % Define the matrix A for the current 'a' value
    A = [1, a; a, 1];
    
    % Generate points on the unit circle
    alpha = linspace(0, 2 * pi, 100); % Create 100 points around the unit circle
    x = cos(alpha);
    y= sin(alpha);
    
    % Apply the transformation A to the unit circle points
    points = A * [x; y];
    
    % Plot the mapped points
    plot(points(1, :), points(2, :), 'DisplayName', ['a = ', num2str(a)]);
end

axis equal;
title('Mapping of Unit Circle by A');
xlabel('X');
ylabel('Y');
grid on;

hold off;
