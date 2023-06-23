% Example code to get the cursor position on screen.

function ScreenCoordinatesDemo
    % Open a window and draw some text into it
    window = Screen('OpenWindow', 0);
    Screen('TextSize', window, 24);
    DrawFormattedText(window, 'Move the cursor around the screen.', 'center', 'center', 0);
    
    while true
        % Get current mouse position (x,y)
        [x,y] = GetMouse;
        
        % Draw text with x,y position
        DrawFormattedText(window, sprintf('x=%d y=%d', round(x), round(y)), 'center', 'center', 0);
        
        % Flip window to show text
        Screen('Flip', window);
        
        % Check for ESC key press
        if KbCheck
            break;
        end;
    end;
    
    % Close window
    Screen('CloseAll');
end