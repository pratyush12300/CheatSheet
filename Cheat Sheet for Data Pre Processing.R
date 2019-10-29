#Cheat Sheet for R Programming

#Data Preprocessing

#Check for NA's in the data set
sum(is.na(data))

#Check for NA's in the each columns of the data set
colSums(is.na(data))

#Assigning values to the NA's
data$variable[is.na(data$variable)]<-mean/median(data$variable,na.rm = T)

#To Remove NA value rows from your data set
data<-data[complete.cases(data)]


#Handling Likert Scale Data
library(plyr)
count(data$variable)
a<-c(50,100,200,100,50)
barplot(a,names.arg =c("Strongly Disagree","Disagree","Neutral","Agree",
                       "Strongly Agree"),main = 'Question',ylab = 'Responses')

#Create dummy variables(One hot encoding)
library(fastDummies)
dummy_cols(data)

#Subsetting Variables out of a dataset(Columns)
#Technique 1
NewDat<-Dat[c(1,5:8,10,15:20)]
#Technique 2
subsetteddata<-subset(data,select = (-y))

#Sorting 
library(plyr)
a<-count(data$age)
head(a[order(a$freq,decreasing = T),])

