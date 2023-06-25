% Example code to demonstrate how to update an image on the screen
% at a rate different to that of the monitor’s refresh rate.

% Open a window
window = PsychImaging('OpenWindow', 0, [0 0 0]);

% Load an image
image = imread('image.jpg');

% Get the size of the image
[imageHeight, imageWidth, ~] = size(image);

% Set the position of the image
imageX = 0;
imageY = 0;
imageRect = [imageX imageY imageX+imageWidth imageY+imageHeight];

% Set the frame rate
frameRate = 10;

% Set the duration of each frame
frameDuration = 1/frameRate;

% Set the number of frames to display
numFrames = 60;

% Display each frame for the specified duration
for i = 1:numFrames
    % Draw the image
    Screen('PutImage', window, image, imageRect);
    
    % Flip to the screen
    Screen('Flip', window);
    
    % Wait for the specified duration
    WaitSecs(frameDuration);
end

% Close the window
sca;