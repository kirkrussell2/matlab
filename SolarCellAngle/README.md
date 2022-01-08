#README.md 

The Concept We are Solving:
Ever since photovoltaic cells were invented  it has always been a battle to reach peak efficiency. 
The largest and most cost effective way to increase this efficiency is by properly positioning the panels. 
The complex elliptical orbit of the earth and rotation around a tilted axis makes this a relatively complex problem.
Finding the optimal tilt and orientation requires optimizing these values to work harmoniously with the earth's orbit. 
By minimizing the angle of incidence of the sun and solar panel, it is possible to increase the efficiency by 30% from a horizontal installation. 

Applied:
We began by approaching this problem with the idea of using Lagrange Multipliers or Derivative tests for extreme values. We quickly realized that 
the nature of this particular function is extremely messy and hard to compute. We attempted to use matlab to compute the lagrange multipliers, 
but neither of us had the matlab skill to make it work using either of those methods and it is impractical to do by hand. To simplify the problem, 
we used matlab to graph level curves to get a feeling for the trend of the function (graph 1). We noticed that as the azimuth approached 0°(360°), 
the angle of incidence decreased. We then graphed another set of level curves around the apparent minimum to get a higher definition idea of the plot's behavior(graph 2). 
This let us get a more accurate estimation of the azimuth and use it to simplify an otherwise incredibly complex problem into one solved quite easily. From there we were 
simply able to set the equation equal to 0 and solve.
