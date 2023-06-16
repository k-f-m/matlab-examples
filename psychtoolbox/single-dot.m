% An example code for visualizing a single red dot on the 
% center of the screen with a black background using Psychtoolbox-3.

% Open a window
[windowPtr, rect] = Screen('OpenWindow', 0, [0 0 0]);

% Define the dot coordinates
dotX = rect(3)/2;
dotY = rect(4)/2;

% Define the dot size in pixels
dotSize = 10;

% Define the dot color as red
dotColor = [255 0 0];

% Draw the dot on the screen
Screen('DrawDots', windowPtr, [dotX,dotY], dotSize, dotColor, [], 2);

% Flip the screen to show the dot
Screen('Flip', windowPtr);

% Wait for a key press to exit
KbWait;

% Close the window
Screen('CloseAll');