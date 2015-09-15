library(RCurl)

PackageURL <-'https://raw.githubusercontent.com/SCBI-MigBirds/MigBirds/master/source/sourcePackageInstall.R'
sourcePackageURL <- getURL(PackageURL)

eval(parse(text = sourcePackageURL))

birdCountsURL <- getURL('https://raw.githubusercontent.com/SCBI-MigBirds/MigBirds/master/data/exampleBirdData.csv')

birdCounts <- read.csv(text = birdCountsURL)

exampleData <- data.frame(site = c('site1', 'site2' ,'site2',rep('site3',3)),
  species = c('amro', c('carw','grca'), 'amro','carw','grca'),
  count = c(1,1,2, 5, 1, 2))

exampleData2 <- matrix(c(1,1,2, 3, 5,8), nrow = 3, ncol = 2)

birdCounts
exampleData
exampleData2







