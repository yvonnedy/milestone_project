titanic <- read.csv2("https://raw.github.ubc.ca/ubc-mds-2017/datasets/master/data/titanic.csv?token=AAADoDScWJc96cKeqViGL4nHskjD5Mu3ks5aLaO8wA%3D%3D", header=TRUE, sep=",")

head(titanic)
View(titanic)   

write.csv(titanic, file = "/users/yvonne/Desktop/DSCI522/milestone_project/data/Titanic.csv")


