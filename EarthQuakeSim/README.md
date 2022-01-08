#README.md

Simulation of Building Dynamics under Earthquake

Question:
Engineers and scientists use mass-spring models to gain insight into the dynamics of structures under teh influence of disturbances such as earthquakes. The following figure shows a representation for a three-storey building. 
                                                   
For this case, the analysis is limited to horizontal motion of the structure. Using Newton's second law, force balances can be developed for this system as
                                                      
where k1 = 3000 N/m, k2 = 2400 N/m and k3 = 1800 N/m.
Simulate the dynamics of the structure (i.e. solve the equations and plot) from t = 0 to 20 s, use tspan = 0:0.1:20. Use ode45.
Initial values: dx1/dt = 1 m/s, and all other initial values of the displacements (x1, x2, x3) and velocities (dx2/dt, dx3/dt) are zero. i.e. use y0 = [0 0 0 1 0 0].
Plot the displacements (x1, x2, and x3) in one graph and velocities (dx1/dt, dx2/dt, and dx3/dt) in another graph.
