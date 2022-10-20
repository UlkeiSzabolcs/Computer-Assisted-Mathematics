function x=conjgrad(A,b,x0,k)

x = x0;
d = b - A*x0;
r = d;
for i=1:k
    if r == 0
        break
    end
    alpha = (r' * r) / (d' * A * d);
    x = x + alpha * d;
    r1 = r - alpha * A * d;
    beta = (r1' * r1) / (r' * r);
    d = r1 + beta * d;
    r = r1;
end