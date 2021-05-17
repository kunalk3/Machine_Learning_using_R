#---------------------------------------------------------------------
# File Name   : gameofthrones.R
# Author      : Kunal K.
# Description : Demonstrate the concept of Text mining
# Date:       : 25 feb 2021
# Version     : V1.0
# Ref No      : DS_Code_R_K118
#---------------------------------------------------------------------

library(rvest)
library(magrittr)
library(XML)
a<-10
king<-NULL
url1<-"http://www.imdb.com/title/tt0944947/reviews?start="
for(i in 0:30){
  url<-read_html(as.character(paste(url1,i*a,sep="")))
  ping<-url %>%
    html_nodes("#tn15content p") %>%
    html_text() 
  king<-c(king,ping)
}
king
write.csv(king,file="king.csv")
getwd()
write.table(king,"gameofthrones.txt")
kik<-read.csv(file.choose())
View(kik)
html_text(html_text(html_node("#tn15content p",url)))