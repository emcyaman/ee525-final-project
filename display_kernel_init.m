function display_kernel_init

% Initialize TrueTime kernel
ttInitKernel('prioDM');   % deadline-monotonic scheduling

% Create 3 mailboxes, each for a sensor channel
ttCreateMailbox('ch1', 10);
ttCreateMailbox('ch2', 10);
ttCreateMailbox('ch3', 10);

% Period of the display task is equal to highest frequency sensor
% task
display_task_period = 0.005;

% Initialize data structure of the task
data.u1 = 0;
data.u2 = 0;
data.u3 = 0;

% Create periodic display task
ttCreatePeriodicTask('display_task', 0, display_task_period, ...
    'display_code', data);

% Create handler function that pushes sensor data to mailboxes
% when they arrive through the network
ttCreateHandler('display_msg_handler', 1, 'display_msg_handler_fcn');
ttAttachNetworkHandler('display_msg_handler');