# This app shows how modules are setup and how they can be used in Shiny. Tabs 1 & 2 call the scatterplot module. Tab 3 calls the text module.

library(tidyverse)
library(bslib)

# run all files (scatterplot.R, text.R) in the modules sub-directory
module_files <- list.files('modules', full.names = TRUE)
sapply(module_files, source)
