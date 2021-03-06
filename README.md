# Ising-Model
Project #2 for Dr. Alber's class


FUNCTION: initializeSystem(p, m)
    SUMMARY:    Set the initial conditions for the system.
    
    INPUTS:     p: the probability of a node being ON/positive, i.e. producing pigment
                m: the size of the system, i.e. number of nodes in row & column
                
    OUTPUT:     A: m by m matrix filled with +1/-1 based on the prescribed probability.
                E: the starting energy of the system


FUNCTION: calcStartEnergy(A, params)
    SUMMARY:    calculate the initial energy based on the Ising Hamiltonian 
    
    INPUT:      A:      the master matrix (m x m)
                params: vector of parameters for the energy function (r1, r2, J1, J2, h)
    
    OUTPUT:     E:      the starting energy of the system

    
    
FUNCTION: calcDiffEnergy(A, params, i, j)
    SUMMARY:    calculate the difference in energy based on the Ising Hamiltonian 
    
    INPUT:      A:      the master matrix (m x m)
                params: vector of parameters for the energy function (r1, r2, J1, J2, h)
                [i j]:  coordinates of node that was switched (so that we don't have to calculate the whole energy, just what was changed)
    
    OUTPUT:     dE: the energy change
    
    
FUNCTION: switchRandNode(A, params)
    SUMMARY:    Choose a node at random to switch according to Ising algorithm
    
    INPUT:      A:      master matrix (m x m)
                params: parameters for the energy calculation
    
    OUTPUT:     A:  updated matrix
                dE: change in energy (0 if no change was made). 


FUNCTION: runSimulation(A, params, watchSim, E_0)
    SUMMARY:    Run the simulation until it reaches an energy minimum or runs for MAX_RUN_TIME
    
    INPUT:      A:          master matrix (m x m)
                params:     parameters for the energy calculation
                watchSim:   (bool) whether or not to show a movie while simulation is running
                E_0:        starting energy
    
    OUTPUT:     A:  final updated matrix
                E:  array of energy values saved while simulation is running


FUNCTION: getParamRange(n)
    SUMMARY:   Randomize parameter choices according to prescribed ranges. 
    
    INPUT:     n:   number of subintervals to divide each range into.
    
    OUTPUT:    params: array of randomly ordered parameter values


    
FUNCTION: printImage()
    SUMMARY:    
    
    INPUT:     
    
    OUTPUT:
    
    
    
FUNCTION: saveToFile()
    SUMMARY:    
    
    INPUT:     
    
    OUTPUT: