function periodic_kernel_init

% Initialize TrueTime kernel
ttInitKernel('prioEDF');   % Earliest-Dealine-First scheduling

% Both tasks start at the t=0
sensor_1_task_starttime = 0.0;
sensor_2_task_starttime = 0.0;
% sensor_1_task samples a 7 Hz signal with a release frequency of
% 200 Hz. Task takes 3 ms to complete.
sensor_1_task_period    = 0.005;
% sensor_2_task samples a 3.5 Hz signal with a release frequency of
% 100 Hz. Task takes 3 ms to complete.
sensor_2_task_period    = 0.010;

% Create periodic sampling tasks
ttCreatePeriodicTask('sensor_1_task', sensor_1_task_starttime, ...
    sensor_1_task_period, 'sensor_1_code');
ttCreatePeriodicTask('sensor_2_task', sensor_2_task_starttime, ...
    sensor_2_task_period, 'sensor_2_code');
    