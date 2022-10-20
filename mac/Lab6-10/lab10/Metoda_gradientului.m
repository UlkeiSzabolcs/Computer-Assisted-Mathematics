function x=Metoda_gradientului(f,Df,x0,k)
x=x0;
for i=1:k
    v=Df(x);
    fun=@(s) f(x-s*v);
    s=fminbnd(fun,0,1);
    x=x-s*v;
end