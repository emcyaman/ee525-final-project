function sporadic_kernel_init

% Initialize TrueTime kernel
ttInitKernel('prioEDF');   % deadline-monotonic scheduling

deadline = 0.010;
ttCreateTask('pulse_task', deadline, 'pulse_code');
ttCreateHandler('pulse_handler', 1, 'pulse_handler_fcn');
ttAttachTriggerHandler(1, 'pulse_handler');

end
