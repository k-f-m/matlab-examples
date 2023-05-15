% Calculate measures of central tendency and create a box plot for a 24-by-3 matrix
% The data represents how many vehicles passed by traffic counting stations on three streets.

% Load the data
load count.dat

% Calculate the mean, median, and mode
mean(count)
median(count)
mode(count)

% Plot the data
boxplot(count)