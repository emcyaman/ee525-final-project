function periodic_kernel_init

% Distributed control system: sensor node
%
% Samples the plant periodically and sends the samples to the 
% controller node. Actuates controls sent from controller.

% Initialize TrueTime kernel
ttInitKernel('prioDM');   % deadline-monotonic scheduling

% Periodic sensor task
sensor_1_task_starttime = 0.0;
sensor_2_task_starttime = 0.0;
sensor_1_task_period    = 0.010;
sensor_2_task_period    = 0.020;

ttCreatePeriodicTask('sensor_1_task', sensor_1_task_starttime, ...
    sensor_1_task_period, 'sensor_1_code');
ttCreatePeriodicTask('sensor_2_task', sensor_2_task_starttime, ...
    sensor_2_task_period, 'sensor_2_code');