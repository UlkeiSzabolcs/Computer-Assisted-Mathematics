function [t,y]=Metoda_mijlocului(inter,y0,n)
t(1)=inter(1);
y(1)=y0;
h=(inter(2)-inter(1))/n;
for i=1:n
t(i+1)=t(i)+h;
y(i+1)=mijstep(t(i),y(i),h);
end
plot(t,y)
function y=mijstep(t,y,h)
y=y+h*ydot(t+h/2,y+h/2*ydot(t,y));
function z=ydot(t,y)
z=t^3/y^2;