TMAX = 1000;
E = zeros(1,TMAX);
p = 0.5;
m = 20;

[A, E(1,1)] = initializeSystem(p, m);

for t=1:TMAX
   [A, dE] = switchRandNode(A);
   E(1,t+1) = dE + E(1,t);
end

T=1:TMAX+1;
plot(T, E)