function [exectime, data] = display_code(seg, data)

switch seg
    
    % Try to fetch some data from sensor mailboxes (non-blocking)
    case 1
        temp.ch1 = ttTryFetch('ch1');
        temp.ch2 = ttTryFetch('ch2');
        temp.ch3 = ttTryFetch('ch3');
        
        % For periodic signals, if a mailbox is empty just keep
        % the latest data
        if ~isempty(temp.ch1)
            data.u1 = temp.ch1;
        end
        if ~isempty(temp.ch2)
            data.u2 = temp.ch2;
        end

        % For the sporadic pulse, display 1 for 1 display cycle
        % if there is a pulse, display 0 otherwise
        if ~isempty(temp.ch3)
            data.u3 = temp.ch3;
        else
            data.u3 = 0;
        end

        exectime = 0.004;

    % Write data to corresponding display channels
    case 2
        ttAnalogOut(1, data.u1)
        ttAnalogOut(2, data.u2)
        ttAnalogOut(3, data.u3)

        exectime = -1;
end
