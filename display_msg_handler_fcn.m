function [exectime, data] = display_msg_handler_fcn(seg, data)

temp = ttGetMsg;
ttTryPost(temp.sender, temp.msg);

exectime = -1;
