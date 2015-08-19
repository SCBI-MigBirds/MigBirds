---
title: "SWIRL self-guided learning exercises for R"
author: ''
output: html_document
---

The R community has created a number of interactive learning exercises that will help you get your R skills up to speed for the Migratory Birds course. Regardless of your skill level, you will undoubtedly be able to learn a considerable amount from these courses. 

### Before you begin: 

1. If you do not yet have a current version R on your computer, download and install Program R ([link](https://cran.r-project.org/)).
2. Download and install R Studio onto your computer ([link](https://www.rstudio.com/products/rstudio/download/)).
3. Download the SWIRL courses to "Downloads" folder of your computer ([link](https://github.com/swirldev/swirl_courses/archive/master.zip)). Make a note of the location of the downloads folder on your computer.

### Install SWIRL:

Open R Studio.

SWIRL is essentially a user-generated program (also called a **package** or **library**) for use in R. To access this, you must add the program to your R folder. In the Console panel (bottom left), type the following and press Enter:

```
install.packages("swirl")
```
_Note: You may be prompted to select a "mirror" from which to download the package. If this is the case, it is recommended that you choose the mirror that is geographically closest to you._

In the Console panel, type the following to determine your current working directory (_Note: This is the location on your computer that R reads and writes data from/to._)

```
getwd()
```

In the console panel, use the "setwd" function (set working directory) to set your working directory to the location of the SWIRL courses. Below is an example of the address of Brian's Downloads folder on his computer. Replace the script between the quotation marks with the directory location from "Before you begin Step 3".

```
setwd('C:/Users/Brian/Downloads/')
```

In the console panel, copy-and-paste the following code to add the SWIRL course pack to your R environment:

```
install_course_zip("swirl_courses-master.zip", multi=TRUE, which_course="R Programming")

install_course_zip("swirl_courses-master.zip", multi=TRUE, which_course="Getting_and_Cleaning_Data")

```
### SWIRL Lessons:

To best prepare you for the Migratory birds course, we ask that you complete the following lessons (_Note: Once SWIRL is loaded (below) you will be given the option of which lessons to run_). 

* In "**R Programming**":
    + Basic Building Blocks
    + Workspace and Files
    + Sequences of Numbers
    + Vectors                 
    + Subsetting Vectors
    + Matrices and Data Frames
    + Logic (_optional_)                   
    + Functions (_optional_)
    + Looking at Data
    

* In  "**Getting and Cleaning Data**":
    + Manipulating Data with dplyr
    + Grouping and Chaining with dplyr
    + Tidying Data with tidyr


### Load and run SWIRL:

Each time you use SWIRL you must add the library to your current working environment. To do so, use the function "require":

```
require(swirl)
```

Type the following to begin using SWIRL:

```
swirl()
```

Have fun!



