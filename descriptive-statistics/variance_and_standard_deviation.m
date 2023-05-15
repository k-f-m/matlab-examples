% Calculate and plot statistics for a 24-by-3 matrix
% The data represents how many vehicles passed by traffic counting stations on three streets.

% Load the data
load count.dat

% Calculate the variance and standard deviation
variance = var(count)
standard_deviation = std(count)

% Plot the data
boxplot(count)