% Example code that draws multiple semi-transparent shapes to the screen

% Initialize Psychtoolbox
PsychDefaultSetup(2);

% Set up the screen
screenNumber = max(Screen('Screens'));
[window, windowRect] = PsychImaging('OpenWindow', screenNumber, [0 0 0]);
Screen('BlendFunction', window, 'GL_SRC_ALPHA', 'GL_ONE_MINUS_SRC_ALPHA');
[screenXpixels, screenYpixels] = Screen('WindowSize', window);
[xCenter, yCenter] = RectCenter(windowRect);

% Create a base rectangle of 500 by 500 pixels
baseRect = [0 0 500 500];