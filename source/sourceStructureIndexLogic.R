library(dplyr) ; library(tidyr)

birdCountsURL <- getURL('https://raw.githubusercontent.com/SCBI-MigBirds/MigBirds/master/data/exampleBirdData.csv')

birdCounts <- read.csv(text = birdCountsURL) %>%
  tbl_df()

exampleData <- data.frame(site = c('site1', 'site2' ,'site2',rep('site3',3)),
  species = c('amro', c('carw','grca'), 'amro','carw','grca'),
  count = c(1,1,2, 5, 1, 2))
                     






