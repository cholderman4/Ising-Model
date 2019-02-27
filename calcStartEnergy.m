function [E] = calcStartEnergy(A, params)

%%
%     SUMMARY:    calculate the initial energy based on the Ising Hamiltonian 
%     
%     INPUT:      A:      the master matrix (m x m)
%                 params: vector of parameters for the energy function (r1, r2, J1, J2, h)
%     
%     OUTPUT:     E:      the starting energy of the system
%%


r1 = params(1);
r2 = params(2);
J1 = params(3);
J2 = params(4);
h = params(5);

m = size(A,1);
coord = 1:m;

E = 0;
for i=1:m
    for j=1:m
        
        y_per_dist = min(mod(coord - i*ones(1,m),m), mod(i*ones(1,m)-coord,m));
        x_per_dist = min(mod(coord - j*ones(1,m),m), mod(j*ones(1,m)-coord,m));
        
        [X, Y] = meshgrid(x_per_dist, y_per_dist);
        R = sqrt(X.^2 + Y.^2);

        E = E + (-1)*h*A(i,j) + (-0.5)*J1*A(i,j)*sum(A(R <= r1 & R ~= 0)) + (-0.5)*J2*A(i,j)*sum(A(R > r1 & R <= r2));        
        
    end
end

end

