#Workflow used to generate results and figures used in the paper on weighted modularity.

# load R library "bipartite" : http://cran.r-project.org/web/packages/bipartite/
# This library contains the datasets used and some functions used for plotting the resulting bipartite networks
library(bipartite)

# Run each algorithm against each dataset 100 times and store output of modularity scores found, timings for the algorithms (in output/summary) and the row and column module labels of each final network partition (in output)
source("RunComparison.R")

#Generate summary statistics of the data generated - these tables are saved in output/summary
source("Analysis.R")



#FIGURES

#Fig 1A
plotweb(olesen2002flores,col.high="royalblue",col.low="firebrick",bor.col.interaction="snow3",bor.col.high="royalblue",bor.col.low="firebrick",col.interaction="snow2",labsize=1.1)
dev.copy2eps(file="olesen2002f.eps")
dev.off()


#Fig 1B
visweb(1*(olesen2002flores>0),type="none",text="interaction",textcol="white",textsize=1,labsize=0.6)
dev.copy2eps(file="olesen2002fBINARY.eps")
dev.off()

#Fig 1C
visweb(olesen2002flores,type="none",text="interaction",textcol="honeydew4",textsize=2,labsize=1.8)
dev.copy2eps(file="olesen2002fWEIGHTED.eps")
dev.off()

#Fig 2
source("ModularityPlots.R")

#Fig 3
source("MaximumMedianQ.R")

#Fig 4a and 4b
source("PLOTTINGNETWORKMODULES.R")
NETWORK_TO_DO = 13 # Row number of olesen2002flores dataset
PLOTTINGNETWORKMODULES(NETWORK_TO_DO)

#Fig 5a and calculates NMI between binary and quantitative partitions for each network with the highest modularity score. (saved to output/summary)
source("NMICHANGEQPLOT.R")
#Fig 5b
source("QrvsQw.R")

#Complementary specialisation
source("ModularityCompSpecialisation.R")