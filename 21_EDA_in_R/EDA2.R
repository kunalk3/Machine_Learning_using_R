#---------------------------------------------------------------------
# File Name   : EDA2.R
# Author      : Kunal K.
# Description : Demonstrate the concept of EDA
# Date:       : 07 Mar 2021
# Version     : V1.0
# Ref No      : DS_Code_R_K118
#---------------------------------------------------------------------

getwd()

setwd("C:/Users/Teja/Documents")

victims <- readLines("C:/Users/TEJA/Desktop/DATA SCIENCE/Datasets/Datasets_BA 2/victims.txt")

victims

df  <-  as.data.frame (victims)

df

class(df)

length(df)

nrow(df)

ncol(df)

dim(df)

str(df)


text  <- victims[!comments]
text

comments_grepl  <-  grepl("^%", victims)
?grepl

comments_grepl

comments_grep  <- grep ("^%", victims)
comments_grep

text[1]
x  <- text[1]
y  <- gsub ("[[:digit:]]", "", x)  # (pattern, replacement, x)
y


Lines  <- matrix (unlist(splitlines), nrow=length(splitlines), byrow = TRUE)
Lines

colnames(Lines)  <- c("Name", "BirthYear", "DeathYear")
titanic_victims  <-  as.data.frame(Lines, stringsAsFactors = FALSE)
titanic_victims


titanic_victims$BirthYear  <- as.numeric(titanic_victims$BirthYear)
titanic_victims$BirthYear

class(titanic_victims$BirthYear)

class(titanic_victims$DeathYear)

titanic_victims

str(titanic_victims)

mean(titanic_victims$BirthYear)
round(mean(titanic_victims$BirthYear))


clean_callsdata  <- apply(telecomCalls, MARGIN=2, 
                          function(x)
                          {ifelse (x==99 | x==-99, NA,x)})

clean_callsdata

apply(clean_callsdata, MARGIN=2, function(x) {mean(x,na.rm=TRUE)})
?apply

apply(clean_callsdata, MARGIN=2, function(x) {sum(x, na.rm=TRUE)})

install.packages("lattice")

library(lattice)
data(barley)
View(barley)

dim(barley)
str(barley)
lapply(barley, function(x) length(unique(x)))

sapply(barley, function(x) length(unique(x)))
apply(barley, 2,function(x) length(unique(x)))
?apply

tapply (barley$yield, barley$site, mean)

tapply(barley$yield, list(barley$year, barley$site), mean)
