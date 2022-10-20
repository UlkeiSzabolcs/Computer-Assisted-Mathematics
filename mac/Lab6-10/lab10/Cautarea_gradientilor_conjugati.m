function x=Cautarea_gradientilor_conjugati(f, Df, x0, k)
x = x0;
d0 = -Df(x);
r0= -Df(x);
d = d0;
r = r0;
for i=1:k
    fun = @(alpha) f(x + alpha*d);
    alpha = fminbnd (fun, 0 ,1);
    x = x + alpha*d;
    c = r;
    r = -Df(x);
    beta = (r'*r)/(c'*c);
    d = r + beta*d;
end