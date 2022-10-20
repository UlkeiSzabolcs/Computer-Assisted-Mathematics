function [t,y]=Metoda_Runge_Kutta_de_ordinul_patru(inter,y0,n)
t(1)=inter(1);
y(1)=y0;
h=(inter(2)-inter(1))/n;
for i=1:n
t(i+1)=t(i)+h;
y(i+1)=rk4step(t(i),y(i),h);
end
plot(t,y)
function y=rk4step(t,y,h)
s1=ydot(t,y);
s2=ydot(t+h/2,y+h/2*s1);
s3=ydot(t+h/2,y+h/2*s2);
s4=ydot(t+h,y+h*s3);
y=y+h/6*(s1+2*s2+2*s3+s4);
function z=ydot(t,y)
z=t^3/y^2;