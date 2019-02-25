function [A, E] = initializeSystem(p, m, r1, r2, J1, J2, h)

%%
% SUMMARY:    Set the initial conditions for the system.
%     
% INPUTS:     p: the probability of a node being ON/positive, i.e. producing pigment
%             m: the size of the system, i.e. number of nodes in row & column
%                 
% OUTPUT:     A: m by m matrix filled with +1/-1 based on the prescribed probability.
%%

% Initially set everything to the OFF position.
A = (-1)*ones(m);
% A = zeros(m);

R = rand(m);

A(R < p) = 1;

E = 0;

for i=1:m
    for j=1:m
        E = E + calcEnergy(A, r1, r2, J1, J2, h, i, j);
    end
end

% Divide energy in half because we counted every pair twice.
end

