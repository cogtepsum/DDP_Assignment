*This is a ShinyApp created for the course project of Developing Data Products course from Cousera Data Science Specialization.*

This is a very simple app that may help one to understand [K-Means](https://en.wikipedia.org/wiki/K-means_clustering) clustering algorithm. It generates some random data, distributed normally across centers, number of which is determined by the user as a number of "true clusters". Positions of centers are generated from uniform random distribution. Variance of all of these random variables is adjusted according to the number of true clusters.

#### **Instructions**:
So, basically, you choose a number of Gaussian distribution to generate, and app will create a combined distribution of them. Afterwards you choose what is the number of clusters you want this data to be divided into - and get your clustering plot.

#### *Citation*: 

*Winston Chang, Joe Cheng, JJ Allaire, Yihui Xie and Jonathan McPherson* (2015). shiny: Web Application Framework for R. R
  package version 0.12.2. https://CRAN.R-project.org/package=shiny
  
*Maechler, M., Rousseeuw, P., Struyf, A., Hubert, M., Hornik, K.* (2015).  cluster: Cluster Analysis Basics and Extensions. R
  package version 2.0.3.

*H. Wickham.* ggplot2: Elegant Graphics for Data Analysis. Springer-Verlag New York, 2009.