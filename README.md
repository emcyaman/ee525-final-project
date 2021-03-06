# ee525-final-project
A distributed data acquisition system is simulated with MATLAB using TrueTime toolbox.
The system has the following main characteristics:
- It consists of 3 computer nodes.
- Node 1 samples two periodic data streams of different frequencies and should run periodic
tasks.
- Node 2 captures events represented by pulses generated at random instants.
- Node 3 is responsible for the collection and display of data. It should run a task which executes every time a data sample is collected from any of Nodes 1, 2 and plot the received data to the “Data display”.

This project is prepared for the Sabanci University Fall-2020 EE525 Real-Time Systems course final project. Note that first you will need to initialize TrueTime library on your MATLAB environment.