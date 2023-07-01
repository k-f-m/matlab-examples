% Example code that draws multiple overlapping objects to the screen

% Initialize Psychtoolbox
PsychDefaultSetup(2);

% Set up the screen
screenNumber = max(Screen('Screens'));
[window, windowRect] = PsychImaging('OpenWindow', screenNumber, [0 0 0]);
Screen('BlendFunction', window, 'GL_SRC_ALPHA', 'GL_ONE_MINUS_SRC_ALPHA');
[screenXpixels, screenYpixels] = Screen('WindowSize', window);
[xCenter, yCenter] = RectCenter(windowRect);

% Make a base rectangle of 250 by 250 pixels
baseRect = [0 0 250 250];

% Center the squares on positions on the screen
backRect = CenterRectOnPointd(baseRect, screenXpixels * 0.5, yCenter);
forwardRect = CenterRectOnPointd(baseRect, screenXpixels * 0.5 + 100, yCenter + 100);

% Draw the squares on the screen one by one
Screen('FillRect', window, [1 0 0], backRect);
Screen('FillRect', window, [0 1 0], forwardRect);

% Draw all of the previous commands on the screen
Screen('Flip', window);

% Wait for a keystroke to end the demo and clear the screen
KbStrokeWait;
sca;