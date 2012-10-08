function [derivs] = eqnts(t,z)

m = .6;
g = 9.8;
c = 0.25*(.24^2);
% [vx; vx']
% [vy; vy']
x = z(1); y = z(2);
vx = z(3); vy = z(4);

%xdot = vx;
%ydot = vy;
vxdot = [(-c/m)*sqrt(vx.^2 + vy.^2).*vx];
vydot = -g -((c/m)*sqrt(vx.^2 + vy.^2).*vy);
derivs = [vx; vy; vxdot; vydot];
end
    