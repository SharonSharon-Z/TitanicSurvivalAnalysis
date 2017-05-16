install.packages('dplyr') # install package
install.packages('ggthemes')
install.packages('mice')
install.packages('randomForest')
---------------
#Load and check data
library('readr')
library('ggplot2') # visualization
library('ggthemes') # visualization
library('scales') # visualization
library('dplyr') # data manipulation
library('mice') # impucation
library('randomForest') # classification algorithm

-----------
train <- read_csv("~/Desktop/Titanic/Data/train.csv") #import data
test <- read_csv("~/Desktop/Titanic/Data/test.csv")
full <- bind_rows(train,test) # combine dataset

str(full) # display structure of data
--------
#Feature Engineering
full$Title <- gsub('(.*, )|(\\..*)', '', full$Name)

