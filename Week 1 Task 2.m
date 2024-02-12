% Define the angles in radians
alpha_45 = pi / 4;    % 45 degrees
alpha_60 = pi / 3;    % 60 degrees

% Create a unit circle
C=[0 0]
theta = linspace(0, 2*pi, 100); % Generate points around the unit circle
x_unit_circle = C(1)+cos(theta);
y_unit_circle = C(2)+sin(theta);
xy=[x_unit_circle;y_unit_circle];
%plot original circle
plot(x_unit_circle,y_unit_circle, 'k')
axis equal
hold on
quiver(C(1),C(2),x_unit_circle(1)-C(2),y_unit_circle(1)-C(2),'color','b','Linewidth',1,'MaxHeadSize',0.5)


% Create the rotation matrices

R_45_cw = [cos(-alpha_45), -sin(-alpha_45); sin(-alpha_45), cos(-alpha_45)]; % 45 degrees clockwise
R_60_ccw = [cos(alpha_60), -sin(alpha_60); sin(alpha_60), cos(alpha_60)]; % 60 degrees counterclockwise


% Apply the rotation matrices to the unit circle

rotated_45_cw = R_45_cw * [x_unit_circle; y_unit_circle];
rotated_60_ccw = R_60_ccw * [x_unit_circle; y_unit_circle];


% Create a figure for the plots
figure;



% Plot 45 degrees clockwise rotation
subplot(2, 2, 2);
plot(x_unit_circle, y_unit_circle);
hold on;
plot(rotated_45_cw(1, :), rotated_45_cw(2, :));
title('45 Degrees Clockwise Rotation');
legend('Original', 'Rotated');
axis equal;
hold off;

% Plot 60 degrees counterclockwise rotation
subplot(2, 2, 3);
plot(x_unit_circle, y_unit_circle);
hold on;
plot(rotated_60_ccw(1, :), rotated_60_ccw(2, :));
title('60 Degrees Counterclockwise Rotation');
legend('Original', 'Rotated');
axis equal;
hold off;

