% Example code to open a window with a black background and draw multiple white lines
% in the shape of a cross (to make a fixation cross) in the center of the window.

% Open a window
window = PsychImaging('OpenWindow', 0, [0 0 0]);

% Get the center coordinates of the window
[xCenter, yCenter] = RectCenter(windowRect);

% Set the size of the lines
lineSize = 20;

% Set the color of the lines
lineColor = [1 1 1];

% Set the coordinates of the lines
lineX = [xCenter-lineSize xCenter+lineSize; xCenter xCenter];
lineY = [yCenter yCenter; yCenter-lineSize yCenter+lineSize];

% Draw the lines and flip them on the screen
Screen('DrawLines', window, [lineX; lineY], lineSize, lineColor);
Screen('Flip', window);

% Wait for a key press
KbStrokeWait;

% Close the window
sca;