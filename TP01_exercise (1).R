#Exercise 12.9 from Introduction to Statistical Learning
rm(list = ls())
set.seed(2022)

x <- data.matrix(USArrests)#USArrests data apart of the base R package. Created in 1975.
x 
dist(x)



#Using hierarchical clustering with complete linkage and Euclidean distance, cluster the states.
hc.complete <- hclust(dist(x), method = "complete") 
hc.complete
plot(hc.complete, main = "Complete Linkage",
     xlab = "", sub = "", cex = .9)




#Cut the dendrogram at a height that results in three distinct clusters.
cutree(hc.complete,3)




#Hierarchically cluster the states using complete linkage and Euclidean distance, after scaling the variables to have standard deviation one.
x <- data.matrix(scale(USArrests))
x
hc.complete <- hclust(dist(x), method = "complete") 
hc.complete
plot(hclust(dist(x), method = "complete"),
     main = "Hierarchical Clustering with Scaled Features")







