#---------------------------------------------------------------------
# File Name   : EDA3.R
# Author      : Kunal K.
# Description : Demonstrate the concept of EDA
# Date:       : 07 Mar 2021
# Version     : V1.0
# Ref No      : DS_Code_R_K118
#---------------------------------------------------------------------

read.csv(file="", header = TRUE, sep=",")

install.packages("foreign")
library(foreign)   # used to load statistical software packages

indata <- read.spss("C:/Users/TEJA/Desktop/DATA SCIENCE/Datasets/Datasets_BA 2/cancer.sav")
indataframe <- as.data.frame(indata)
str(indataframe)
summary(indataframe)


install.packages("sas7bdat")  # or install Hmisc
library(sas7bdat)
data(sas7bdat.sources)





library(base)
web_page_data <- readLines("http://www.edureka.co")

install.packages("RCurl")
library(RCurl)
data2 <- getURL("http://www.edureka.co")
