function y = linearSkateboard(t, currentValues, R);
% Linear Skateboard:  (odefun)
%
% This is overkill since the linear equation has an
% exact solution: phi0*cos((g/R)*t)
%
% dPhi/dt = omega
% dOmega/dt = -(g/R)phi
% 
g = 9.8; % m/s^2
phi = currentValues(1);
omega = currentValues(2);
dPhi = omega;
dOmega = -(g/R)*phi;
y = [dPhi; dOmega];
