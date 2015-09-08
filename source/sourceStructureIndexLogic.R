library(dplyr) ; library(tidyr)

birdCountsURL <- getURL('https://raw.githubusercontent.com/SCBI-MigBirds/MigBirds/master/data/exampleBirdData.csv')

birdCounts <- read.csv(text = birdCountsURL)
birdCounts

exampleData <- data.frame(site = c('site1', 'site2' ,'site2',rep('site3',3)),
  species = c('amro', c('carw','grca'), 'amro','carw','grca'),
  count = c(1,1,2, 5, 1, 2))

exampleData

exampleData2 <- matrix(c(1,1,2, 3, 5,8), nrow = 3, ncol = 2)

exampleData2
                     






