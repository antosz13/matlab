clear
x=linspace(-1,3);
y=(power(sin(5*x+3),2).*(x.^3+4*x.^2))/nthroot(x.^4-3*x.^3+1,3);
plot(x,y, 'r')
