clear
axis equal;
syms u v

cx(u,v) = u - (u^3)/3 + u * v^2;
cy(u,v) = v - (v^3)/3 + v * u^2;
cz(u,v) = (u^2) - (v^2);

u0 = 10;
v0 = 15;
fsurf(cx,cy,cz, [-25 25 -25 25])
hold on
plot3(cx(u0, v0), cy(u0,v0), cz(u0, v0), 'r*')

fx(u) = cx(u, v0)
fy(u) = cy(u, v0)
fz(u) = cz(u, v0)

fplot3(fx, fy, fz, 'b')
hold on
dx(v) = cx(u0, v)
dy(v) = cy(u0, v)
dz(v) = cz(u0, v)

fplot3(dx, dy, dz, 'g')



