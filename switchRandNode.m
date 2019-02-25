function [A, dE] = switchRandNode(A, r1, r2, J1, J2)

m=size(A,1);

i = randi(m);
j = randi(m);

A(i,j) = (-1)*A(i,j);

dE = calcEnergy(A, r1, r2, J1, J2, i, j)

if (dE < 0)
    % Accept the change since energy decreases.
elseif (rand < exp(-dE))
    % Energy increases, but accept the change stochastically.
else
    % Do not accept the change, so change it back.
    A(i,j) = (-1)*A(i,j);
    dE = 0;    
end
     

end

