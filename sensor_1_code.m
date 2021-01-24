function [exectime, data] = sensor_1_code(seg, data)

sensor_channel = 'ch1';

switch seg
    
    case 1
        data.msg.msg = ttAnalogIn(1);
        exectime = 0.003;
        
    case 2
        data.msg.sender = sensor_channel;
        ttSendMsg(3, data.msg, 80);
        exectime = 0.002;
        
    case 3
        exectime = -1;
end
