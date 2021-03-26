#---------------------------------------------------------------------
# File Name   : HClustering_University.R
# Author      : Kunal K.
# Description : Demonstrate the concept of Hirarchical Clustering
# Date:       : 13 feb 2021
# Version     : V1.0
# Ref No      : DS_Code_R_K118
#---------------------------------------------------------------------

Uni <- read.csv(file.choose())

# Normalizing continuous columns to bring them under same scale
normalized_data<-scale(Uni[,2:7]) #excluding the university name columnbefore normalizing
?dist

d <- dist(normalized_data, method = "euclidean") # distance matrix

?hclust

fit <- hclust(d, method="complete")

?hclust

plot(fit) # display dendrogram
plot(fit, hang=-1)

?cutree
rect.hclust(fit, k=3, border="red")

?rect.hclust
groups <- cutree(fit, k=3) # cut tree into 5 clusters

membership<-as.matrix(groups) # groups or cluster numbers
final <- data.frame(Uni, membership)

View(final)

write.csv(final, file="final.csv",row.names = F)

aggregate(Uni[,-1],by=list(final$membership),mean)
