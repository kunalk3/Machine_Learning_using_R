#---------------------------------------------------------------------
# File Name   : 1Sample-t.R
# Author      : Kunal K.
# Description : Demonstrate the concept of Hypothesis Testing (One-sample T Test)
# Date:       : 18 feb 2021
# Version     : V1.0
# Ref No      : DS_Code_R_K118
#---------------------------------------------------------------------

library(readxl)
bolt <- read_excel("E:/Day Wise/Day 08 Hypothesis Testing/Data/Bolt diameter.xlsx")
View(bolt)
attach(bolt)

#Normality Test
#ho: Data are normal
#ha: Data are non- normal

shapiro.test(Diameter)#p value= 0.6133, p high Ho fly=> data are normal

# population std deviation unknowm, perform 1 sample t test

t.test(Diameter,mu=10 ,alternative = "two.sided",conf.level = 0.95)
?t.test

# p value= 0.2376, p High Ho fly, 
# fail to reject Ho 

t.test(Diameter,mu=10 ,alternative = "greater",conf.level = 0.95)


