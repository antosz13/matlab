clear
syms u v
R = 2; r = 1;
x(u,v) = (R + r *cos(v)) * cos(u);
y(u,v) = (R + r *cos(v)) * sin(u);
z(u,v) = r* sin(v);
fsurf(x,y,z, [0, 2*pi, 0, 2*pi], 'y')
axis equal
u0 = pi / 3; v0 = pi/8;
hold on
plot3(x(u0,v0), y(u0,v0), z(u0,v0), 'r.', ...
    'MarkerSize', 50')
cx(u) = x(u, v0);
cy(u) = y(u, v0);
cz(u) = z(u, v0);
fplot3(cx, cy, cz, [0 2*pi], 'b', 'LineWidth', 3)

dx(v) = x(u0, v);
dy(v) = y(u0, v);
dz(v) = z(u0, v);
fplot3(dx, dy, dz, [0 2*pi], 'm', 'LineWidth', 3)

cxd(u) = diff(cx, u);
cyd(u) = diff(cy, u);
czd(u) = diff(cz, u);
a = [cxd(u0), cyd(u0), czd(u0)];
P = [x(u0,v0), y(u0,v0), z(u0,v0)];
quiver3 (P(1), P(2), P(3), a(1), a(2), a(3), ...
    'b', 'LineWidth', 2);

dxd(v) = diff(dx, v);
dyd(v) = diff(dy, v);
dzd(v) = diff(dz, v);
b = [dxd(v0), dyd(v0), dzd(v0)];
quiver3 (P(1), P(2), P(3), b(1), b(2), b(3), ...
    'm', 'LineWidth', 2);

n = cross(a, b);
quiver3 (P(1), P(2), P(3), n(1), n(2), n(3), ...
    'r', 'LineWidth', 2);


m = cross(b, a);
quiver3 (P(1), P(2), P(3), m(1), m(2), m(3), ...
    'g', 'LineWidth', 2);




