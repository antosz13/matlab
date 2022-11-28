clear
syms x y
f(x, y) = x + y;
g(x, y) = (4 - x + 2 * y) / 3;
h(x, y) = (-2 * x + 0.5 * y - 2) / 4;

fsurf(f, 'r')
axis equal; hold on;
fsurf(g, 'b')
fsurf(h, 'g')
