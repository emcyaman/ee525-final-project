function [exectime, data] = sensor_1_code(seg, data)

% This sensor is the channel 1
sensor_channel = 'ch1';

switch seg
    
    % Sample the analog input
    case 1
        data.msg.msg = ttAnalogIn(1);
        exectime = 0.002;
        
    % Send the sampled data with channel info
    case 2
        data.msg.sender = sensor_channel;
        ttSendMsg(3, data.msg, 80);
        exectime = 0.001;
        
    case 3
        exectime = -1;
end
