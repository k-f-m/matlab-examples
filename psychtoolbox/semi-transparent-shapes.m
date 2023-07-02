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

% Set screen positions and the number of rectangles
xPosition = [xCenter - 250 xCenter + 250 xCenter - 250 xCenter +250];
yPosition = [yCenter yCenter yCenter - 250 yCenter + 250];
numSquares = length(xPosition);

% Set RGBA values of rectangles
rgbaValues = [0 1 0 1; 1 0 0 1; 1 1 0 0.4; 1 0 1 0.4]';

 % Set coordinates of rectangles
 rectCoordinates = nan(4, 4);
 for i = 1:numSquares
     allRects(:, i) = CenterRectOnPointd(baseRect, xPosition(i), yPosition(i));
 end

% Draw rectangles on the screen
Screen('FillRect', window, rgbaValues, rectCoordinates);

% Flip all previous commands to the screen
Screen('Flip', window);

% Wait for a key press and clear the screen
KbStrokeWait;
sca;