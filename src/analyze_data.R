#! /usr/bin/env Rscript 
# analyze_data.R
# Ying Dong, Dec 2017
#
# This script calculates a specified summary stat for a specified 
# variable from the Titanic.csv file. 
# This script takes input filename and output filename as the variable arguments. 
# 
# Usage: Rscript src/analyze_data.R data/Titanic.csv results/count_survived.csv

# read in command line arguments
args <- commandArgs(trailingOnly = TRUE)
input_file <- args[1]
output_file <- args[2]

# read in data
titanic <- read.csv(input_file, header = TRUE, sep = ",")

# count survived number in each class
library(tidyverse)
count_survived <- titanic %>% 
  select(pclass, survived) %>% 
  group_by(pclass) %>%
  summarise(survived_number = n())

# write data to the results directory in CSV
write.table(count_survived, file = output_file, sep = ",", row.names=T)