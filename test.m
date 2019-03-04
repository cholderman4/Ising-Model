clear

randomizeParams = 1;
randomizeA = 1;
watchSim = 1;


%% Initialize System

if (randomizeParams)
    n=20;
    
    % Randomize parameter range.
    params = getParamRange(n);
%     rng('shuffle');
    i_rand = randperm(n);
else
    
end

if (randomizeA)
    % Set properties to randomize initial set up.
    % Skip this if the inital set up will be the limit of another simulation.
    p = 0.5;
    m = 100;
    E=0;
    [A, E] = initializeSystem(p, m, params(:,i_rand(1)) );
else
    E = calcStartEnergy(A, params);
    m = size(A,1);
end

% Display initial distribution.
image([0 m], [0 m], A,'CDataMapping','scaled')

%% Run the actual simulations.

% Counter for which parameter range to use.
i = 1;

% spot_param
% [A, E] = runSimulation(A, spot_param(1), spot_param(2), spot_param(3), spot_param(4), spot_param(5), 1, E(1,end));

i = i+1;
params(:, i_rand(i))'
[A, E] = runSimulation(A, params(:, i_rand(i)), watchSim, E(1,end));

% i = i+1;
% params(:, i_rand(i))'
% [A, E] = runSimulation(A, params(:, i_rand(i)), watchSim, E(1,end));

%% Displaying Results

%T=1:size(E,2);
% plot(T, E)
image([0 m], [0 m], A,'CDataMapping','scaled')
colorbar
