function int=Regula_mijlocului_compusa(f,a,b,m)
y0=f(a);
ym=f(b);
s=0;
h=(b-a)/m;
for i=1:m-1
    s=s+f(a+((2*i-1)*h)/2);
end
int=h*s; 