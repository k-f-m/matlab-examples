% An example code for plotting a 3D space curve

% Define a vector
linearly_spaced_points = linspace(0, 10*pi, 1000);

% Define x, y, and z vectors
x = sin(linearly_spaced_points);
y = cos(linearly_spaced_points);
z = linearly_spaced_points;

% Plot the curve
figure;
plot3(x,y,z);
title('3D Space Curve Example');
xlabel('X');
ylabel('Y');
zlabel('Z');