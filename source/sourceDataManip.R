library(dplyr) ; library(tidyr)

birdCountsURL <- getURL('https://raw.githubusercontent.com/SCBI-MigBirds/MigBirds/master/data/exampleBirdData.csv')

untidyFrame <- data.frame(subject = c('A','B','C'), 
  treatmentA = c(1.3, 2.3, 3.1), 
  treatmentB = c(2.9, 3.2, 4.6))

wideFrame <- data.frame(species = c('amro', 'carw', 'grca'),
  d10 = c(0,0,1),
  d20 = c(1,1,0), 
  d30 = c(0,0,0))

longFrame <- data.frame(site = c('site1', 'site2' ,'site2',rep('site3',3)),
  species = c('amro', c('carw','grca'), 'amro','carw','grca'),
  count = c(1,1,2, 5, 1, 2))
                     
birdCounts <- read.csv(text = birdCountsURL) %>%
  tbl_df()





