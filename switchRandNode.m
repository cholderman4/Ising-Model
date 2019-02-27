function [A, dE] = switchRandNode(A, params)

    m=size(A,1);

    i = randi(m);
    j = randi(m);
    
    kBT = 1;

    %A(i,j) = (-1)*A(i,j);

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

