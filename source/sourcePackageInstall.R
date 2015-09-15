# Package installation script

packages <- c("ggplot2", "RCurl","dplyr", "tidyr","raster")
packagesToInstall <- packages[!(packages %in% installed.packages()[,"Package"])]
install.packages(packagesToInstall)
if(length(packagesToInstall)>0) {install.packages(packagesToInstall)}