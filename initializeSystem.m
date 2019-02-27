function [A, E] = initializeSystem(p, m, params)

%%
% SUMMARY:    Set the initial conditions for the system.
%     
% INPUTS:     p: the probability of a node being ON/positive, i.e. producing pigment
%             m: the size of the system, i.e. number of nodes in row & column
%                 
% OUTPUT:     A: m by m matrix filled with +1/-1 based on the prescribed probability.
%             E: the starting energy of the system.  
%%

% Initially set everything to the OFF position.
A = (-1)*ones(m);
% A = zeros(m);

R = rand(m);

A(R < p) = 1;

E = calcStartEnergy(A, params);

% Divide energy in half because we counted every pair twice.
end

