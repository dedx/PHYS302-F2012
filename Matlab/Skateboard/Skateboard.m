clear all; close all;
R = 5.0; % radius of pipe in meters
initialValues = [90*pi/180, 0];  % theta(t=0) and omega(t=0)
timeSpan = [0 100]; % seconds
[t1,nlphi] = ode45(@(t,v) nonlinearSkateboard(t,v,R), timeSpan, initialValues);
[t2,lphi] = ode45(@(t,v) linearSkateboard(t,v,R), timeSpan, initialValues);

figure();
plot(t1,(180/pi)*nlphi(:,1),'b-','LineWidth',2);
hold on
plot(t2,(180/pi)*lphi(:,1),'g-','LineWidth',2);
g = 9.8; %grav. const
approx = (180/pi)*initialValues([1]).*cos(sqrt(g/R).*t1);
plot(t1,approx,'r.');
legend('nonlinear','linear','approx');
xlabel('time (seconds)');
ylabel('\phi (degrees)');
axis([0 20 -100 100]);
hold off