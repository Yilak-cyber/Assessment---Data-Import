
# Assessment - Data Import
library(tidyverse)
#.........................Question #1 .............................

# Which of the following is NOT part of the data wrangling process?
    
    # Answer:Checking correlations between your variables

#.........................Question #2 .............................

# Which files could be opened in a basic text editor?

    # Answer:  data.txt, data.csv, data.tsv

#.........................Question #3 .............................

# You want to analyze a file containing race finish times for a recent marathon.
# You open the file in a basic text editor and see lines that look like the following:

# initials,state,age,time
# vib,MA,61,6:01
# adc,TX,45,5:45
# kme,CT,50,4:19
# What type of file is this?

# Answer: A comma-delimited file with a header

#.........................Question #4 .............................

#Assume the following is the full path to the directory that a student wants to
# use as their working directory in R: "/Users/student/Documents/projects/"

# Which of the following lines of code CANNOT set the working directory to the 
# desired "projects" directory?

# Answer: setwd(/Users/student/Documents/projects/)
# Note: You need to use quotation marks when providing a full path to the working directory.

getwd()
setwd("C:/Users/YiFanta/Desktop/Data analysis with R & R studio/R Training Scripts/Data Science Wrangling")
getwd()

#.........................Question #5 .............................

# We want to copy the "murders.csv" file from the dslabs package into an existing 
# folder "data", which is located in our HarvardX-Wrangling projects folder. 
# We first enter the code below into our RStudio console.
getwd()
# [1] "C:/Users/UNIVERSITY/Documents/Analyses/HarvardX-Wrangling"
filename <- "murders.csv"
path <- system.file("extdata", package = "dslabs")
# Which of the following commands would NOT successfully copy "murders.csv" 
# into the folder "data"?
view(dat)
read_lines(dat)
# Answer: file.copy(file.path(path, "murders.csv"), getwd())

#.........................Question #6 .............................

# You are not sure whether the murders.csv file has a header row. 
# How could you check this?

# Answer: # Open the file in a basic text editor.
          # In the RStudio "Files" pane, click on your file, then select "View File".
          # Use the command read_lines (remembering to specify the number of rows 
               #with the n_max argument).

#.........................Question #7 .............................

# What is one difference between read_excel() and read_xlsx()?

# Answer: read_excel() reads both .xls and .xlsx files by detecting the file 
# format from its extension, while read_xlsx() only reads .xlsx files.

#.........................Question #8 .............................

# You have a file called "times.txt" that contains race finish times for a marathon. 
# The first four lines of the file look like this:
# initials,state,age,time
# vib,MA,61,6:01
# adc,TX,45,5:45
# kme,CT,50,4:19
# Which line of code will NOT produce a tibble with column names 
# "initials", "state", "age", and "time"?

# Answer: race_times <- read.csv("times.txt")

#.........................Question #9 .............................

# You also have access to marathon finish times in the form of an Excel document
# named "times.xlsx". In the Excel document, different sheets contain race 
# information for different years. The first sheet is named "2015", the second 
# is named "2016", and the third is named "2017".
# Which line of code will NOT import the data contained in the "2016" tab of this Excel sheet?

# Answer: times_2016 <- read_xlsx("times.xlsx", sheet = "2")

#.........................Question #10 .............................

# You have a comma-separated values file that contains the initials, home states, 
# ages, and race finish times for marathon runners. The runners' initials contain 
# three characters for the runners' first, middle, and last names (for example, "KME").
# You read in the file using the following code.
race_times <- read.csv("times.csv")
# What is the data type of the initials in the object race_times?

# Answer: characters

#.........................Question #11 .............................

# Which of the following is NOT a real difference between the readr import 
# functions and the base R import functions?

# Answer:The base R import functions can read .csv files, but cannot read files
     # with other delimiters, such as .tsv files, or fixed-width files.

#.........................Question #12 .............................

# You read in a file containing runner information and marathon finish times 
# using the following code.
race_times <- read.csv("times.csv", stringsAsFactors = F)
# What is the class of the object race_times?

# Answer:data frame

#.........................Question #13 .............................

# Select the answer choice that summarizes all of the actions that the following
# lines of code can perform. Please note that the url below is an example and
# does not lead to data.
url <- "https://raw.githubusercontent.com/MyUserName/MyProject/master/MyData.csv"
read_lines(url)
dat <- read_csv(url)
download.file(url, "MyData.csv")
head(dat)

# Answer: Create a tibble in R called dat that contains the information contained in the
# csv file stored on Github. Download the csv file to the working directory and 
# name the downloaded file "MyData.csv". 

##################################
# Assessment Part 2: Data Import #   //////////
###################################

# Use the readr package in the tidyverse library:
library(tidyverse)

#Use the readr package in the tidyverse library:

#.........................Question #14 .............................

# Inspect the file at the following 
# URL: https://archive.ics.uci.edu/ml/machine-learning-databases/breast-cancer-wisconsin/wdbc.data
# Which readr function should be used to import this file?
URL_ML<-"https://archive.ics.uci.edu/ml/machine-learning-databases/breast-cancer-wisconsin/wdbc.data"
read_lines(URL_ML, n_max = 6) # we can see that the delimiter is comma
read_csv(URL_ML)
head(read_csv(URL_ML))
# Answer:read_csv()

#.........................Question #15 .............................

# Check the documentation for the readr function you chose in the previous 
# question to learn about its arguments. Determine which arguments you need 
# to the file from the previous question:
url <- "https://archive.ics.uci.edu/ml/machine-learning-databases/breast-cancer-wisconsin/wdbc.data"

# Does this file have a header row? Does the readr function you chose need 
# any additional arguments to import the data correctly?
read_csv(URL_ML,col_names=FALSE)

# Answer:No, there is no header. The col_names=FALSE argument is necessary.

#.........................Question #16 .............................

# Inspect the imported data from the previous question.

# How many rows are in the dataset?

# Answer:569

# How many columns are in the dataset?

# Answer:32


