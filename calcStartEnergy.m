function [E] = calcStartEnergy(A, r1, r2, J1, J2, h)


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

