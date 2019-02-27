function [params] = getParamRange(n)

%%
%     SUMMARY:   Randomize parameter choices according to prescribed ranges. 
%     
%     INPUT:     n:   number of subintervals to divide each range into.
%     
%     OUTPUT:    params: array of randomly ordered parameter values
%%

    
    % Number of parameter values to randomly test.
    % n = 100;

    % Set range of parameter values, so that they can be randomly chosen.
    r1 = linspace(1, 3.5, n);
    r2 = linspace(3.75, 8, n);
    J1 = linspace(1.0, 3.0, n);
    J2 = linspace(-0.05, -1, n);
    h = linspace(-8, 8, n);
    
    % r1 = 3.5;
    % r2 = 9.6;
    % J1 = 2.5;
    % J2 = -1.0;
    % h = -2;
    
    params = [r1; r2; J1; J2; h];

end

