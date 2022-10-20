A = [7 -4 6; 12 -7 12; 6 -4 6];
x = [-1;-1;-1];
[lambda,u] = Iteratia_de_putere(A,x,30);
lambda1 = eig(A);