#! /usr/bin/env Rscript 
# analyze.R
# Ying Dong, Dec 2017
#
# This script calculates a specified summary stat for a specified 
# variable from the Titanic.csv file. 
#
# Usage: Rscript src/analyze.R titanic.csv


# read in data
titanic <- read.csv("data/Titanic.csv", header=TRUE, sep=",")

# count survived number in each class
count_survived <- titanic %>% 
  select(pclass, survived) %>% 
  group_by(pclass) %>%
  summarise(survived_number = n())

# write data to the results directory in CSV
write.table(count_survived, file="results/count_survived.csv", sep=",", row.names=T)