library(tidyverse)
library(bslib)

# run all files (scatterplot.R, text.R) in the modules sub-directory
module_files <- list.files('modules', full.names = TRUE)
sapply(module_files, source)