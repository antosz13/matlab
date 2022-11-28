clear
px = [-2 4 6 10]; py = [-2 0 -2 2];

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
