function [lambda,u]=Iteratia_catului_Rayleigh(A,x,k)
for j=1:k
u=x/norm(x);
lambda=u'*A*u;
x=(A-lambda*eye(size(A)))\u;
end
u=x/norm(x);
lambda=u'*A*u;