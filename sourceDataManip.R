library(dplyr) ; library(tidyr)

birdCountsURL <- getURL('https://raw.githubusercontent.com/SCBI-MigBirds/MigBirds/master/data/exampleBirdData.csv')
wideURL <- getURL('https://raw.githubusercontent.com/SCBI-MigBirds/MigBirds/master/data/wideCounts.csv')
longURL <- getURL('https://raw.githubusercontent.com/SCBI-MigBirds/MigBirds/master/data/longCounts.csv')

birdCounts <- read.csv(text = birdCountsURL)
wideCounts <- read.csv(text = wideURL)
longCounts <- read.csv(text = longURL)




