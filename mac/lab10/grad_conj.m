function x = grad_conj(Df,f,x,k)
    d = -Df(x);
    r = d;
    for i = 1 : k
        g = @(alfa) f(x + alfa*d);
        alfa = fminbnd(g,0,1);
        x = x + alfa * d;
        r1 = -Df(x);
        beta = (r1' * r1) / (r' * r);
        d = r1 + beta * d;
        r = r1;
    end
end