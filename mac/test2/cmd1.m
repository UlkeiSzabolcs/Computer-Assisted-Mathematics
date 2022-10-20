[t,y] = Metoda_Adams_Bashforth_cu_trei_pasi([0 1],0,20,2);
opts=odeset('RelTol',1e-4,'Refine',1,'MaxStep',1);
[t1,y1]=ode45(@(t,y) y+t^2,[0 1],0,opts);
e = [t,y] - [t1,y1];