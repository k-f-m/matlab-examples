% This code reads a sample image and segments it using k-means clustering with three clusters.

% Read the sample image
image = imread('pout.tif');

% Segment the image using k-means clustering with three clusters
labled_image = imsegkmeans(I,3);

% Overlay the labeled image on top of the original image and display the result
overlaid_image = labeloverlay(I,L);
imshow(overlaid_image)