function [derivs] = eqnts(t,z)

d = .15; %diameter of 15 cm
rho = 7.8e3; %kg/m^3
v0 = 300; %m/s
m = rho*(4/3)*pi*(d/2)^3; %mass
g = 9.8;
lambda = 1e4; % m (exp scale param)
gamma = 0.25; % N*s^2/m^4
c0 = gamma*(d^2);
c = c0;

x = z(1); y = z(2);
vx = z(3); vy = z(4);

%xdot = vx;
%ydot = vy;
vxdot = [(-c/m)*sqrt(vx.^2 + vy.^2).*vx];
vydot = -g -((c/m)*sqrt(vx.^2 + vy.^2).*vy);
derivs = [vx; vy; vxdot; vydot];
end
    