function [exectime, data] = pulse_code(seg, data)

% This sensor is the channel 3
sensor_channel = 'ch3';

switch seg
    
    % Set message payload as 1
    case 1
        data.msg.msg = 1;
        exectime = 0.002;
    
    % Send the message with channel info
    case 2
        data.msg.sender = sensor_channel;
        ttSendMsg(3, data.msg, 80);
        exectime = 0.001;
        
    case 3
        exectime = -1;
end
