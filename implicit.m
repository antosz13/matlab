clear
syms x y
F(x,y) = x^2 + y^2 -1;
fimplicit(F, [0 5 -5 5])
axis equal
