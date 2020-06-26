from PyGasMix.Gas cimport Gas
cimport numpy as np
import numpy as np
cdef class Gasmix:
    cdef public:
         Gas Gases[6]
         '''Array of six gases used to store the input and output of the gas functions. Uses the Gas struct.'''
         dict ExtraParameters
         '''Dictionary used to pass extra parameters into the gas functions.'''
         dict ExtraOutputs
         '''Dictionary used to fill out the extra outputs that aren't filled in the Gas object. This is mainly
         used by the GasesText module.'''
