#! /usr/bin/env Rscript 
# plot_data.R
# Ying Dong, Dec 2017
#
# This script generates a figure of total number of survivors in each passanger class 
# and saves the plot to the results directory.
# This script takes an input filename and an output filename as the variable arguments. 
# 
# Usage: Rscript src/plot_data.R results/filter_survived.csv results/count_survived.png

# read in command line arguments
args <- commandArgs(trailingOnly = TRUE)
input_file <- args[1]
output_file <- args[2]

# define main function
main <- function(){
  # read in data
  filter_survived <- read.csv(input_file, header = TRUE, sep = ",")

  # import package
  library(ggplot2)

  # plot the bar chart
  count_survived <- ggplot(filter_survived, aes(pclass)) +
    geom_bar() +
    labs(title = "Total Number of Survivors In Each Class", x = "Passenger Class", y = "Number of Survivors")

  # write the figure to file
  ggsave(output_file, count_survived)
  
}

# call main function
main()