function [exectime, data] = display_msg_handler_fcn(seg, data)

% This handler function is invoked if there is an incoming
% network message. Get the messasge.
temp = ttGetMsg;
% Post the message payload to the corresponding mailbox.
ttTryPost(temp.sender, temp.msg);

exectime = -1;
