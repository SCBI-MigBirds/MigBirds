# Package installation script

packages <- c('gstat','raster','dismo','maps', 'rasterVis')
packagesToInstall <- packages[!(packages %in% installed.packages()[,"Package"])]
if(length(packagesToInstall)>0) {install.packages(packagesToInstall)}


# Load libraries:

library(raster)
library(dismo)
library(gstat)
library(maps)
library(rasterVis)

# Get a shapefile of the United States:

us = data('state')
