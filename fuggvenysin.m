n = 10^7;
 x = 0;
xs = 0;
 for i=1:n
    g = 1;
    for j=1:2
    r = rand();
        if r<1/3
            g = g*2;
        elseif r>2/3 
            g = g/2;
        end
    end
    x = x+g;
    xs = xs+g^2;
end
 x_mean = x/n
x_var = xs/n - x_mean^2
