function int=Regula_lui_Simpson_compusa(f,a,b,m)
y0=f(a);
ym=f(b);
s=0;
h=(b-a)/(2*m);
for i=1:m-1
    s=s+f(a+2*i*h);
end
s1=0;
for i=1:m
    s1=s1+f(a+(2*i-1)*h);
end
int=h/3*(y0+ym+4*s1+2*s);