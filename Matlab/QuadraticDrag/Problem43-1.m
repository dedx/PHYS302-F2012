%% Problem 43

m = .6;
d = .24;
v0 = 15;
g = 9.8;
theta0 = pi/4;
vx0 = v0*cos(theta0);
vy0 = v0*sin(theta0);
x0 = 0;
y0 = 2;
tspan = [0 100];
vinit = [x0 y0 vx0 vy0];
c = 0.25*(.24^2);

[t v] = ode45(@quadratic, tspan, vinit);
% 
%figure(1)
%plot(t,v(:,3))
%figure(2)78
%plot(t,v(:,4))


figure(3)
%hold on
time = linspace(0,25,100);
nodragy = y0 + vy0.*time - 0.5*g*time.^2;
nodragx = x0 + vx0.*time;
plot(nodragx,nodragy,'b-','Linewidth',2);
axis([0 25 0 10])
hold on

plot(v(:,1),v(:,2),'r-','Linewidth',2)
%axis([0 25 0 25])
ylabel('y (m)');
xlabel('x (m)');

legend('No drag','Quadratic Drag');