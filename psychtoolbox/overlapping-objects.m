% Example code that draws multiple overlapping objects to the screen

% Initialize Psychtoolbox
PsychDefaultSetup(2);

% Set up the screen
screenNumber = max(Screen('Screens'));
[window, windowRect] = PsychImaging('OpenWindow', screenNumber, [0 0 0]);
[screenXpixels, screenYpixels] = Screen('WindowSize', window);
[xCenter, yCenter] = RectCenter(windowRect);