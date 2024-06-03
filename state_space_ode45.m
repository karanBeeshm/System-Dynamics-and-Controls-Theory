tspan = [0 10];
x0 = [0 0];

[t, x] = ode45(@fun,tspan,x0)
plot(t,x(:,1))
hold on
plot(t,x(:,2))
legend('Displacement','Velocity')
