#Exercise 12.9 from Introduction to Statistical Learning
rm(list = ls())
set.seed(2022)

x <- data.matrix(USArrests)
#USArrests data apart of the base R package. Created in 1975.

x #look at the data set and see if there appears to be any natural clusters
dist(x)

#Using hierarchical clustering with complete linkage and Euclidean distance, cluster the states.
hc.complete <- hclust(dist(x), method = "complete") 
hc.complete

plot(hc.complete, main = "Complete Linkage",
     xlab = "", sub = "", cex = .9)

#Cut the dendrogram at a height that results in three distinct clusters. Which states belong to which clusters?
cutree(hc.complete,3)

#Hierarchically cluster the states using complete linkage and Euclidean distance, after scaling the variables to have standard de-viation one
x <- data.matrix(scale(USArrests))
x

plot(hclust(dist(x), method = "complete"),
     main = "Hierarchical Clustering with Scaled Features")

#What effect does scaling the variables have on the hierarchical clustering obtained? In your opinion, should the variables be scaled before the inter-observation dissimilarities are computed? Provide a justification for your answer.




