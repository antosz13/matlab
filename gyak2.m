clear

syms x y
f(x, y) = sqrt(1 - (x^2) - (0.5 * y^2));
fsurf(f)
axis equal; hold on;
x0 = 0.5; y0 = 0.2;
plot3(x0, y0, f(x0, y0), '*')