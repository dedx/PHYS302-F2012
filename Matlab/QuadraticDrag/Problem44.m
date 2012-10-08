%% Problem 44

v0 = 300; %m/s
g = 9.8;
theta0 = 50*pi/180;
vx0 = v0*cos(theta0);
vy0 = v0*sin(theta0);
x0 = 0;
y0 = 0;

tspan = [0 35];
vinit = [x0 y0 vx0 vy0];

[t v] = ode45(@quadatm, tspan, vinit);

[t z] = ode45(@quad2, tspan, vinit);

 figure(3)
% %hold on
 time = linspace(0,305,100);
 nodragy = y0 + vy0.*time - 0.5*g*time.^2;
 nodragx = x0 + vx0.*time;
 plot(nodragx,nodragy,'b-','Linewidth',2);
 axis([0 1e4 0 3e3])
 hold on
% 
 plot(v(:,1),v(:,2),'r-','Linewidth',2)
 %axis([0 25 0 25])
 ylabel('y (m)');
 xlabel('x (m)');
% 
hold on

plot(z(:,1),z(:,2),'g-','Linewidth',2);

legend('No drag','Quadratic + c(y)=c0*exp(-y/lambda)','Pure Quadratic Drag');