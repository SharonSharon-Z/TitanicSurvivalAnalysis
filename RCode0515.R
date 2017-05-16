install.packages('dplyr') #
library('dplyr')
library('ggthemes')
library('mice')
library('randomForest')

train <- read_csv("~/Desktop/Titanic/Data/train.csv")
test <- read_csv("~/Desktop/Titanic/Data/test.csv")
full <- bind_rows(train,test)

str(full)
