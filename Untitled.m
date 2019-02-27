% params = [1.6566    4.8662    1.5253   -0.2995   -4.7475];
% params = [1.9091    5.2955    1.7273   -0.3955   -2.7273];
% params = [3.0202    7.1843    2.6162   -0.8177    4.9293];
% params = [2.7929    6.7980    2.4343   -0.7313    -13.4747];
% params = [1.5303    4.6515    1.4242   -0.2515   -4.6061];
% params = [1.7576    5.0379    1.6061   -0.3379   -3.1515];
% params = [2.3131    10.9823    2.0505   -0.95490    0.4040];
% params = [2.0859    5.5960    1.8687   -0.4626   3.0505];
params = [2.0526    5.5395    1.8421   -0.4500   -1.2632];

% params = [2.0    3.5    1.0   -0.10   0];

[A, E] = initializeSystem(p, m, params );
% E = calcStartEnergy(A, params);
[B, E] = runSimulation(A, params, 1, E(1,end));
