LPAwb+ in Julia
=============================


```julia
include("LPA_wb_plus.jl")  #read in functions

MAT = rand(0:3,20,20) # create an example matrix

#example scripts

MOD1 = LPA_wb_plus(MAT) # find labels and weighted modularity using LPAwb+

MOD2 = Exhaustive_LPA_wb_plus(MAT) # find labels and weighted modularity using Exhaustive LPAwb+

MOD3 = Exhaustive_LPA_wb_plus(MAT.>0, 2, 20) # find labels and binary modularity using Exhaustive LPAwb+ checking from a minimum of 2 modules and 20 replicates

```

