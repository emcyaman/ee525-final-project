function display_kernel_init

% Initialize TrueTime kernel
ttInitKernel('prioDM');   % deadline-monotonic scheduling

ttCreateMailbox('ch1', 10);
ttCreateMailbox('ch2', 10);
ttCreateMailbox('ch3', 10);

display_task_period = 0.005;

data.u1 = 0;
data.u2 = 0;
data.u3 = 0;

ttCreatePeriodicTask('display_task', 0, display_task_period, ...
    'display_code', data);

ttCreateHandler('display_msg_handler', 1, 'display_msg_handler_fcn');
ttAttachNetworkHandler('display_msg_handler');