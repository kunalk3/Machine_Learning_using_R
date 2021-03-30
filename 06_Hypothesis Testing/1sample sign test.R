#---------------------------------------------------------------------
# File Name   : 1Sample sign test.R
# Author      : Kunal K.
# Description : Demonstrate the concept of Hypothesis Testing (One-sample sign Test)
# Date:       : 18 feb 2021
# Version     : V1.0
# Ref No      : DS_Code_R_K118
#---------------------------------------------------------------------

library(readxl)
Marks_data <- read_excel("E:/Day Wise/Day 08 Hypothesis Testing/Data/Marks-1sample sign test.xlsx")
View(Marks_data)
attach(Marks_data)

#normality test
#ho: Data are normal
#ha: Data are non- normal

shapiro.test(Marks)# p - value =0.0008013, reject Ho, Data are non- normal


#historical median=82

#ho: current median=82
#h1: Current median!=82

#case1
library(BSDA)
SIGN.test(Marks,md = 82, alternative = "two.sided",
          conf.level = 0.95)
#p value=0.1153 , p high Ho fly, fail to reject Ho 
#Current median is equal to historic median
