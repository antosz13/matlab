clear
n = 3;
px = [0, 2, 4, 6]; py = [1, 6, 6, 2];
plot(px, py, 'b*--')
axis([-8 0 10 20]); axis equal; hold on;

syms t
cx(t) = 0*t; cy(t) = 0*t;
for i = 0:n
    
    b(t) = nchoosek(n, i) * t^i * (1-t)^(n-i);
    cx(t) = cx(t) + px(i+1) * b(t);
    cy(t) = cy(t) + py(i+1) * b(t);
end
fplot(cx, cy, [0 1])

m = 4;
rx = [px(4), px(4)+((n/m) * (px(4)-px(3))), 15, 18, 17]; 
ry = [py(4), py(4)+((n/m) * (py(4)-py(3))), -4, 3, 5];
plot(rx, ry, 'r*--')


syms t
cx(t) = 0*t; cy(t) = 0*t;

for i = 0:m
    
    b(t) = nchoosek(m, i) * t^i * (1-t)^(m-i);
    cx(t) = cx(t) + rx(i+1) * b(t);
    cy(t) = cy(t) + ry(i+1) * b(t);
end
fplot(cx, cy, [0 1])



