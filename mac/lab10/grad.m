function x= grad(Df,f,x,k)
    for i = 1:k
        v = Df(x);
        g=@(s) f(x-s*v);
        s = fminbnd(g,0,1);
        x = x -s*v;
    end  
end