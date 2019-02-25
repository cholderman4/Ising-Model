TMAX = 1000;
E = zeros(1,TMAX);
p = 0.5;
m = 60;

r1 = 1.0;
r2 = 6.0;
J1 = 1.0;
J2 = -0.1;

[A, E(1,1)] = initializeSystem(p, m, r1, r2, J1, J2);
image([0 20], [0 20], A,'CDataMapping','scaled')


for t=1:TMAX
    [A, dE] = switchRandNode(A, r1, r2, J1, J2);
    E(1,t+1) = dE + E(1,t);
    image([0 20], [0 20], A,'CDataMapping','scaled')
    pause(.25)
end

T=1:TMAX+1;
plot(T, E)