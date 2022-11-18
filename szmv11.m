clear
syms x 
f(x) = sin(x);
% figure
fplot(f, [-6, 2], 'g', 'LineWidth', 3)
hold on
axis equal
axis([-10 6 -2 2])
% P = (1, f(1))
% figure
plot(1, f(1), 'r.', 'Markersize', 15)