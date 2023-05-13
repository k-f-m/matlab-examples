% Plot a 3D surface plot of the function Z = X.^2 + Y.^2

% Define the domain of the function
[X,Y] = meshgrid(-2:.2:2);

% Define the function
Z = X.^2 + Y.^2;

% Plot the surface
surf(X,Y,Z)