% Read image
I = imread('pout.tif');

% Segment the image using k-means clustering with three clusters.
L = imsegkmeans(I,3);

% Display the segmented image.
B = labeloverlay(I,L);
imshow(B)