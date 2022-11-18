a=[1 3 0 2]
b=[2 -8 7 -3]
egyutt=polyfit(a,b,3)
x1=linspace(-1,4);
y1=-5*x1+7;
plot(x1,y1,a,b,'*')
hold on
ax.XAxisLocation = 'origin';
ax.YAxisLocation = 'origin';
box on; grid on;