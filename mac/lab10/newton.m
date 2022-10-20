function x=newton(Df,Hf,x,k)
    for i = 1:k
        v = Hf(x) \ (-Df(x));
        x = x + v;
    end
end