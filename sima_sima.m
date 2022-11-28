clear
px = [-2 5 10]; py = [-2 -1 2];
plot(px, py, 'b*');
axis([-4 8 -6 8]); axis equal; hold on;

vx = [2 3 2]; vy = [4 -4 3];
quiver(px(1), py(1), vx(1), vy(1));
quiver(px(2), py(2), vx(2), vy(2));
quiver(px(3), py(3), vx(3), vy(3));

t1 = 0; t2 = 1;

syms a3 a2 a1 a0 t

cx(t) = a3*t^3 + a2*t^2 + a1 * t + a0;
cxd(t) = diff(cx, t);
eq = [cx(t1) == px(1), cx(t2) == px(2), ...
    cxd(t1) == vx(1), cxd(t2) == vx(2)
    ];
m = solve(eq, [a3 a2 a1 a0]);
x(t) = subs(cx, [a3 a2 a1 a0], [m.a3, m.a2, m.a1, m.a0])



cy(t) = a3*t^3 + a2*t^2 + a1 * t + a0;
cyd(t) = diff(cy, t);
eq = [cy(t1) == py(1), cy(t2) == py(2), ...
    cyd(t1) == vy(1), cyd(t2) == vy(2)
    ];
m = solve(eq, [a3 a2 a1 a0]);
y(t) = subs(cy, [a3 a2 a1 a0], [m.a3, m.a2, m.a1, m.a0])

fplot(x, y, [t1 t2])


%2.vmi

t3 = -1; t4 = 1;

eq = [cx(t3) == px(2), cx(t4) == px(3), ...
    cxd(t3) == vx(2), cxd(t4) == vx(3)
    ];
m = solve(eq, [a3 a2 a1 a0]);
x(t) = subs(cx, [a3 a2 a1 a0], [m.a3, m.a2, m.a1, m.a0])


eq = [cy(t3) == py(2), cy(t4) == py(3), ...
    cyd(t3) == vy(2), cyd(t4) == vy(3)
    ];
m = solve(eq, [a3 a2 a1 a0]);
y(t) = subs(cy, [a3 a2 a1 a0], [m.a3, m.a2, m.a1, m.a0])

fplot(x, y, [t3 t4])

quiver(px(2), py(2), 0.5*vx(2), 0.5*vy(2))