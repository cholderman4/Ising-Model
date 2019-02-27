function [A, E] = runSimulation(A, params, watchSim, E_0)
    
    eps = 1.0e-4;

    m = size(A,1);
    runSim = 1;
    zeroCounter = 0;
    E = E_0;    
    i=1;
    
    while (runSim)
        [A, dE] = switchRandNode(A, params);
        
        if ( mod(i,10) == 0 )            
            E(1,end+1) = dE + E(1,end);
            
            if ( size(E,2) >= 10000)
                runSim = 0;
                zeroCounter
            end
        end
        
        % Choose whether or not to show a movie while simulation is
        % running.
        if (watchSim)
            if (i == 1000)
                image([0 m], [0 m], A,'CDataMapping','scaled') 
                colorbar
                pause(0.01)
                i=0;
            end            
        end
            
        i=i+1;
        
        
        % Once the energy is unchanging for a large number of times, stop
        % the simulation.
        if ( abs(dE) <= eps )
            zeroCounter = zeroCounter + 1;
            if (zeroCounter == 300)
                runSim = 0;
                zeroCounter
            end
        else
            zeroCounter = 0;
        end 
        
    end

    
end

