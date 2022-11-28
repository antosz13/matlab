clear

syms x y
f(x, y) = sin(x) + cos(y) / x;
fsurf(f, [0.1 5 -6 6])
axis equal; hold on;

fimplicit(f,[0.1 5 -6 6],'r');