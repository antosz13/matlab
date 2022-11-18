clear
px = [1 6 10 8 14 18]; py = [2 5 2 -1 5 0];
plot(px, py, '*--')
axis([-5 25 -4 8]); axis equal; hold on
syms t
cx(t) = 0*t; cy(t) = 0*t;
n = 5;
for i = 0:n
    
    b(t) = nchoosek(n, i) * t^i * (1-t)^(n-i);
    cx(t) = cx(t) + px(i+1) * b(t);
    cy(t) = cy(t) + py(i+1) * b(t);
end
fplot(cx, cy, [0 1])

t0=0;
plot(cx(t0), cy(t0), '*')
cxd(t) = diff(cx, t);
cyd(t) = diff(cy, t);

a = [cxd(t0), cyd(t0)];
P = [cx(t0), cy(t0)];
quiver (P(1), P(2), a(1), a(2), 'r', 'LineWidth', 2);

b = [ n* (px(2)-px(1)), n * (py(2)-py(1))]
quiver(px(1), py(1), b(1), b(2), 'g', 'LineWidth', 2)
c = [ n * (px(n+1)-px(n)), n * (py(n+1)-py(n))]
quiver(px(n+1), py(n+1), c(1), c(2), 'b', 'LineWidth', 2)
