# Package installation script
#------------------------------

# Packages for this exercise:

packages <- c('gstat','raster','dismo','maps', 'rasterVis')

# Packages for exercise not currently installed:

packagesToInstall <- packages[!(packages %in% installed.packages()[,"Package"])]

# Install packages, if necessary:

if(length(packagesToInstall)>0) {install.packages(packagesToInstall, dependencies = T)}

# Load libraries:

library(raster)
library(dismo)
library(gstat)
library(maps)
library(rasterVis)


