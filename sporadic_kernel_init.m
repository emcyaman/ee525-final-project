function sporadic_kernel_init

% Initialize TrueTime kernel. Since there is only 1 task,
% scheduling related things are unimportant.
ttInitKernel('prioEDF');   % Earliest-Deadline-First scheduling

deadline = 0.010;

% Construct a aperiodic task for sending the pulse message.
ttCreateTask('pulse_task', deadline, 'pulse_code');
% The pulse handler is invoked when there is a pulse.
ttCreateHandler('pulse_handler', 1, 'pulse_handler_fcn');
% Pulse is sensed through a trigger input.
ttAttachTriggerHandler(1, 'pulse_handler');
