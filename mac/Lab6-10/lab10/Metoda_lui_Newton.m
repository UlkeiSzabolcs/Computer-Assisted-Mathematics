function x=Metoda_lui_Newton(Df,Hf,x0,k)
x=x0;
for i=1:k
x=x-Hf(x)\Df(x);
end