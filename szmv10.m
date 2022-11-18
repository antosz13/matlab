clear
x = [2, 5, 8, 10];
y = [3, 4, 3, 1];
plot(x, y, 'oR--,')
axis([-2,14 -1,5])
axis equal
grid on
box off
ax = gca;
ax.XAxisLocation = 'origin';
ax.YAxisLocation = 'origin';