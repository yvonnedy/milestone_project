#! /usr/bin/env Rscript 
# download_data.R
# Ying Dong, Dec 2017
#
# This script glimpses the titanic data and saves it locally.
# This script takes a URL and output filename as the variable arguments.
#
# Usage: Rscript src/download_data.R "https://raw.github.ubc.ca/ubc-mds-2017/datasets/master/data/titanic.csv?token=AAADoKNo_xGqx3JvHFN3HfqPrPTi0EJPks5aP-yFwA%3D%3D" data/Titanic.csv

# read in command line arguments
args <- commandArgs(trailingOnly = TRUE)
URL <- args[1]
output_file <- args[2]

# define main function
main <- function(){

  # read in data
  titanic <- read.csv(URL)
    
  # glimpse first 6 rows of data
  head(titanic)
    
  # save the data into the data directory
  write.csv(titanic, file = output_file)

}

# call main funtion
main()