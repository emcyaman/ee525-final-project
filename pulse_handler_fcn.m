function [exectime, data] = pulse_handler_fcn(seg, data)

% Pulse handler creates a pulse_task job.
ttCreateJob('pulse_task');

exectime = -1;
