function [A, dE] = switchRandNode(A, params)

%     SUMMARY:    Choose a node at random to switch according to Ising algorithm
%     
%     INPUT:      A:      master matrix (m x m)
%                 params: parameters for the energy calculation
%     
%     OUTPUT:     A:  updated matrix
%                 dE: change in energy (0 if no change was made). 

    m=size(A,1);

    i = randi(m);
    j = randi(m);
    
    kBT = 1;

    dE = calcDiffEnergy(A, params, i, j);

    if (dE < 0)
        % Make the change since energy decreases.
        A(i,j) = (-1)*A(i,j);
    elseif (rand < exp(-dE*kBT))
        % Energy increases, but accept the change stochastically.
        A(i,j) = (-1)*A(i,j);
    else
        % Do not accept the change.
        dE = 0;    
    end
     

end

