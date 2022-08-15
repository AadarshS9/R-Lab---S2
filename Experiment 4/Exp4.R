#4.1
library(ggplot2)
ggplot(iris,aes(x=Petal.Length,y=Petal.Width))+
  geom_point(aes(color=factor(Species)))+
  geom_smooth(method="lm")+
  geom_label(aes(label=Species,hjust=0),nudge_y=0.5,size=2)
print(iris)

#4.2
hist(iris$Sepal.Width, freq=NULL, density=NULL, breaks=12,
     xlab="Sepal Width", ylab="Frequency", main="Histogram of Sepal Width")
library(ggplot2)
histogram <- ggplot(data=iris, aes(x=Sepal.Width))
histogram + geom_histogram(binwidth=0.2, color="black", aes(fill=Species)) + 
  xlab("Sepal Width") +  ylab("Frequency") + ggtitle("Histogram of Sepal Width")

#4.3
library(ggplot2)
boxplot(Sepal.Length~Species,data=iris, 
        xlab="Species", ylab="Sepal Length", main="Iris Boxplot") + theme_classic()

ggplot(iris, aes(x = Sepal.Length, y = Species)) + 
  geom_boxplot(fill = "#0099f8") + coord_flip()

#4.4
set.seed(1234)
iris1 <- iris[sample(1:nrow(iris), 110), ]
hline <- data.frame(Species=c("setosa", "versicolor", "virginica"), hline=as.vector(table(iris$Species)))
hline
barplot(table(iris1$Species), col="black", xlab="Species", ylab="Count", main="Bar plot of Sepal Length")

library(ggplot2)
bar <- ggplot(data=iris1, aes(x=Species))
bar + geom_bar() + 
  xlab("Species") +  ylab("Count") + ggtitle("Bar plot of Sepal Length") +
  geom_errorbar(data=hline, aes(y=hline, ymin=hline, ymax=hline), col="red", linetype="dashed")