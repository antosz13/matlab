clear
px = [0, 2, 4, 6, 5]; py = [1, -2, -2, 2, 4];
plot(px, py, 'b*')
axis equal; hold on;

syms t
cx(t) = 0*t; cy(t) = 0*t;
n = 4;
for i = 0:n
    
    b(t) = nchoosek(n, i) * t^i * (1-t)^(n-i);
    cx(t) = cx(t) + px(i+1) * b(t);
    cy(t) = cy(t) + py(i+1) * b(t);
end
fplot(cx, cy, [0 1])

quiver(px(5), py(5), n*(px(5)-px(4)), n*(py(5)-py(4)), 'r')


rx = [px(5), 10]; ry = [py(5), 6];
plot(rx, ry, 'r*')
hold on;

v0 = [n*(px(n+1)-px(n)), n*(py(n+1)-py(n))]
quiver(px(n+1), py(n+1), v0(1), v0(2), 'b')

vx = [v0(1), 2]; vy = [v0(2), -4];
quiver(rx(2), ry(2), vx(2), vy(2))



syms a3 a2 a1 a0 t
t0 = 0; t1 = 2;

cx(t) = a3*t^3 + a2*t^2 + a1 * t + a0;
cxd(t) = diff(cx, t);
eq = [cx(t0) == rx(1), cx(t1) == rx(2), ...
    cxd(t0) == vx(1), cxd(t1) == vx(2)
    ];
m = solve(eq, [a3 a2 a1 a0]);
x(t) = subs(cx, [a3 a2 a1 a0], [m.a3, m.a2, m.a1, m.a0])

cy(t) = a3*t^3 + a2*t^2 + a1 * t + a0;
cyd(t) = diff(cy, t);
eq = [cy(t0) == ry(1), cy(t1) == ry(2), ...
    cyd(t0) == vy(1), cyd(t1) == vy(2)
    ];
m = solve(eq, [a3 a2 a1 a0]);
y(t) = subs(cy, [a3 a2 a1 a0], [m.a3, m.a2, m.a1, m.a0])

fplot(x, y, [t0 t1])






