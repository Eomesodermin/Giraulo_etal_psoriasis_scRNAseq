# pipeline variables
start.time <- Sys.time()

# Set working directory to source file location
library(rstudioapi)
setwd(dirname(getActiveDocumentContext()$path))

# since moving script from local to github - I want to adjust work dir to be main github dir - therefore 
setwd("..")

working.dir <- getwd()

# For reproducibility
set.seed(42)

# Establish colour scheme
source("scripts/variables/Colour_scheme_variable.R", local = knitr::knit_global())

# load packages 
source("scripts/Load_Packages.R")

########################################
# Parallelization of seurat functions
########################################

parallelization <- FALSE
# keep in mind that for some reason some processes are crazy slow and use heaps of ram when using multisession 
# sometimes sequential is much faster and uses very little ram
# keep sequential as default and only change if necessary


if(parallelization){
  library(future)
  # check the current active plan
  plan()
  
  # detect cores
  ncores <- parallel::detectCores()
  ncores <- ncores-5
  # set plan
  plan("multisession", workers = ncores) #multisession
  plan()
  

  options(future.rng.onMisuse="ignore") 
}


###############################
# create output directories
###############################

# Common directories 
if(!dir.exists("saves")){dir.create("saves", recursive = T)}

# scRNAseq directories
if(!dir.exists("results/")){dir.create("results/", recursive = T)}


