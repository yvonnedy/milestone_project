#! /usr/bin/env Rscript 
# analyze_data.R
# Ying Dong, Dec 2017
#
# This script filters survived people in each passager class 
# and writes the result to the results directory in CSV. 
# This script takes an input filename and an output filename as the variable arguments. 
# 
# Usage: Rscript src/analyze_data.R data/Titanic.csv results/filter_survived.csv

# read in command line arguments
args <- commandArgs(trailingOnly = TRUE)
input_file <- args[1]
output_file <- args[2]

# read in data
titanic <- read.csv(input_file, header = TRUE, sep = ",")

# import package
library(tidyverse)

# find survived people in each passager class
count_survived <- titanic %>% 
  mutate(pclass = as.factor(pclass)) %>% 
  filter(survived == 1) %>% 
  group_by(pclass)

# write data to the results directory in CSV
write.table(count_survived, file = output_file, sep = ",", row.names=T)