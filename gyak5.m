clear
px = [0, 0]; py = [0, 1]; pz = [0, 1];
rx = [1, 1]; ry = [0, 1]; rz = [1, 0];

syms u v

sx(u, v) = (1 - v) * p(u) + v * r(u);
sy(u, v) = (1 - v) * p(u) + v * r(u);
sz(u, v) = (1 - v) * p(u) + v * r(u);
fsurf(sx, sy, sz, [0, 1])

axis equal; hold on;
p(u) = (1 - u) * P1 + u * P2;
r(u) = (1 - u) * R1 + u * R2;

fplot(p, 'r')

fplot(r, 'g')
syms u v 
