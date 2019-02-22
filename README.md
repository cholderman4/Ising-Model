# Ising-Model
Project #2 for Dr. Alber's class


FUNCTION: initializeSystem(p, m)
    SUMMARY:    Set the initial conditions for the system.
    
    INPUTS:     p: the probability of a node being ON/positive, i.e. producing pigment
                m: the size of the system, i.e. number of nodes in row & column
                
    OUTPUT:     A: m by m matrix filled with +1/-1 based on the prescribed probability.

    
    
FUNCTION: calcEnergyDifference(A, r_1, R_2, J_1, J_2, [i j])
    SUMMARY:    calculate the difference in energy based on the Ising Hamiltonian 
    
    INPUT:      A: the master matrix (m x m)
                r_1: smaller radius of interaction
                R_2: larger radius of interaction  
                J_1: energy multiplier within the smaller radius
                J_2: energy multiplier between the smaller and larger radii
                [i j]: coordinates of node that was switched (so that we don't have to calculate the whole energy, just what was changed)
    
    OUTPUT:     dE: the energy change
    
    
FUNCTION: switchRandomNode(A)
    SUMMARY:    Choose a node at random to switch according to Ising algorithm
    
    INPUT:      A: master matrix (m x m)     
    
    OUTPUT:     A: updated matrix
                dE: change in energy (0 if no change was made). We probably want to keep track of this to determine when to stop the simulation. Once dE is constant for a little while, then we are probably at an energy minimum, so we can stop.
    
    
FUNCTION: printImage()
    SUMMARY:    
    
    INPUT:     
    
    OUTPUT:
    
    
    
FUNCTION: saveToFile()
    SUMMARY:    
    
    INPUT:     
    
    OUTPUT: