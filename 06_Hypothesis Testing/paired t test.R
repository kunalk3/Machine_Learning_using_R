#---------------------------------------------------------------------
# File Name   : paired t test.R
# Author      : Kunal K.
# Description : Demonstrate the concept of Hypothesis Testing (Paired T test + Normality Test)
# Date:       : 18 feb 2021
# Version     : V1.0
# Ref No      : DS_Code_R_K118
#---------------------------------------------------------------------

library(readxl)
fuel <- read_excel("E:/Day Wise/Day 08 Hypothesis Testing/Data/Fuel_paired T test.xlsx")
View(fuel)
attach(fuel)


y1 <- `Without additive`
y2 <- `With Additive`

#Normality test
#Ho : data are normal
#ha: data are not normal

shapiro.test(y1)# p-0.5>0.05=> data are normal
shapiro.test(y2)# p- 0.16>0.05=> data are normal

# external conditions are same- Paired T test

#Case1:
  
#HO: mu of y1= mu of y2
#Ha: mu of y1!= mu of y2

t.test(y1,y2,alternative = "two.sided",conf.level = 0.95,paired = TRUE)

#p value=0.06>0.05=> fail to reject HO=> mu of y1=mu of y2
  

