function x=broyden1(F,x0,k)
    n=length(x0);
    A=eye(n,n);
    for i=1:k
        x=x0-inv(A)*F(x0);
        gamma=x-x0;
        delta=F(x)-F(x0);
        A = A + ((delta - A * gamma) * gamma') / (gamma' * gamma);
        x0=x;
    end
end