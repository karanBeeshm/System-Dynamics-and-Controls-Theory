tspan = [0 10];
x0 = [0 0 0 0];

[t, x] = ode45(@fun_4,tspan,x0);

figure(1)
plot(t,x(:,1))
hold on
plot(t,x(:,3))
legend('M1','M2')
title("Displacement")
figure(2)
plot(t,x(:,2))
hold on
plot(t,x(:,4))
legend('M1','M2')
title("Velocity")
