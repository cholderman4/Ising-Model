function [A, dE] = switchRandNode(A, r1, r2, J1, J2, h)

m=size(A,1);

i = randi(m);
j = randi(m);

%A(i,j) = (-1)*A(i,j);

dE = calcDiffEnergy(A, r1, r2, J1, J2, h, i, j);

if (dE < 0)
    % Make the change since energy decreases.
    A(i,j) = (-1)*A(i,j);
elseif (rand < exp(-dE))
    % Energy increases, but accept the change stochastically.
    A(i,j) = (-1)*A(i,j);
else
    % Do not accept the change.
    dE = 0;    
end
     

end

