clear
eps = 1.0e-4;

% TMAX = 50000;
% E = zeros(1,TMAX);
p = 0.5;
m = 60;

r1 = 2.5;
r2 = 8.6;
J1 = 2.5;
J2 = -0.10;
h = -3;

runSim = 1;
zeroCounter = 0;

[A, E(1,1)] = initializeSystem(p, m, r1, r2, J1, J2, h);
image([0 m], [0 m], A,'CDataMapping','scaled')

i=1;
t=1;
while (runSim)
    [A, dE] = switchRandNode(A, r1, r2, J1, J2, h);
    E(1,t+1) = dE + E(1,t);
    if (i == 1000)
        image([0 20], [0 20], A,'CDataMapping','scaled') 
        pause(0.1)
        i=0;
    end
%     pause(.05)
    i=i+1;
    t=t+1;
    
    if (abs(dE) <= eps)
        zeroCounter = zeroCounter + 1;
        if (zeroCounter == 250)
            runSim = 0;
        end
    else
        zeroCounter = 0;
    end
end

T=1:t;
% plot(T, E)
% image([0 m], [0 m], A,'CDataMapping','scaled')
