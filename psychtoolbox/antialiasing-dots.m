% A sample code to visualize four red dots on a black background with antialiasing enabled.

% Open a window
[windowPtr, rect] = PsychImaging('OpenWindow', 0, [0 0 0]);

% Define the dot coordinates
dotCoords = [rect(3)/4 rect(4)/4; rect(3)*3/4 rect(4)/4; rect(3)/4 rect(4)*3/4; rect(3)*3/4 rect(4)*3/4];

% Define the dot size
dotSize = 20;

% Define the dot color
dotColor = [1 0 0];

% Draw the dots with antialiasing enabled
Screen('DrawDots', windowPtr, dotCoords', dotSize, dotColor, [], 2);

% Flip the window to show the dots
Screen('Flip', windowPtr);

% Wait for a key press to exit
KbWait;

% Close the window
sca;