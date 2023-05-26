% Open a window and draw a white square
[windowPtr, rect] = PsychImaging('OpenWindow', 0, [1 1 1]);
Screen('FillRect', windowPtr, [0 0 0], [100 100 200 200]);
Screen('Flip', windowPtr);

% Wait for a key press and then close the window
KbWait;
sca;