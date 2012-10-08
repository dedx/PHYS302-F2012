function y = nonlinearSkateboard(t, currentValues, R);
% Nonlinear Skateboard:  (odefun)
%
% dPhi/dt = omega
% dOmega/dt = -(g/R) sin(phi)
% 
g = 9.8; % m/s^2
phi = currentValues(1);
omega = currentValues(2);
dPhi = omega;
dOmega = -(g/R)*sin(phi);
y = [dPhi; dOmega];
