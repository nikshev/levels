#Get data from file
library(cluster)
library(fpc)
data<-na.omit(read.csv("data.csv"))
dat<-data[,3:14]
clus<-kmeans(dat,25,nstart = 20)
plotcluster(dat, clus$cluster)
clusplot(dat, clus$cluster, color=TRUE, shade=TRUE, 
         labels=2, lines=0)
clus