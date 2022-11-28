clear
syms t
x(t) = t*cos(t);
y(t) = t*sin(t);
fplot(x(t), y(t), [0 12*pi])
hold on
axis equal
plot(x(8*pi), y(8*pi), '*')
xd(t) = diff(x, t);
yd(t) = diff(y, t);
v = [xd(8*pi), yd(8*pi)];
quiver(x(8*pi), y(8*pi), v(1), v(2))