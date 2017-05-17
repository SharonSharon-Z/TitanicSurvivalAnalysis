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
###Feature Engineering
full$Title <- gsub('(.*,)|(\\..*)', '', full$Name) #gsub ->replace
View(full)

#Show title counts by sex (先竖再横)
table(full$Sex, full$Title) 

# Titles with very low cell counts to be combined to "rare" level
rare_title <- c('Dona', 'Lady', 'the Countess','Capt', 'Col', 'Don', 'Dr', 'Major', 'Rev', 'Sir', 'Jonkheer') 

# Also reassign mlle, ms, and mme accordingly
#full$Title[full$Title == 'Mlle']         <- 'Miss' 
#full$Title[full$Title == 'Ms']          <- 'Miss'
#full$Title[full$Title == 'Mme']         <- 'Mrs' 
#full$Title[full$Title %in% rare_title]  <- 'Rare Title'
#table(full$Sex, full$Title) 
#View(full)
