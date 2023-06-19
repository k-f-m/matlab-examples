% An example code for drawing a set of black squares on a white background 
% using Psychtoolbox-3 to make the Hermann Grid Illusion

% Open a window
[windowPtr,rect] = PsychImaging('OpenWindow',0);

% Set the size of the squares and the spacing between them
squareSize = 50;
spacing = 10;

% Calculate the number of squares that can fit in each dimension
numSquaresX = floor(rect(3)/squareSize);
numSquaresY = floor(rect(4)/squareSize);

% Draw the squares
for i = 1:numSquaresX
    for j = 1:numSquaresY
        x = (i-1)*squareSize + spacing;
        y = (j-1)*squareSize + spacing;
        Screen('FillRect',windowPtr,[0 0 0],[x y x+squareSize-spacing y+squareSize-spacing]);
    end
end

% Flip the screen to show the squares
Screen('Flip',windowPtr);

% Wait for a key press to exit
KbWait;

% Close the window
PsychImaging('Close');