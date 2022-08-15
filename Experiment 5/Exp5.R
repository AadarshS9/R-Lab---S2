install.packages("ggplot2")
install.packages("dplyr")
install.packages("broom")
install.packages("ggpubr")

library(ggplot2)
library(dplyr)
library(broom)
library(ggpubr)

#5.1
sales <- read.csv("tvmarketing.csv")
print(sales)
summary(sales)
dim(sales)

ggplot(sales, aes(x = TV, y = Sales)) +
  geom_point() +
  stat_smooth(method = lm)

model <- lm(Sales ~ TV, data = sales)
model

summary(model)

#5.2
job <- read.csv("jobprof.csv")
print(job)
summary(job)
dim(job)

ggplot(job, aes(x = y, y = x1)) +
  geom_point() +
  stat_smooth(method = lm)

ggplot(job, aes(x = y, y = x2)) +
  geom_point() +
  stat_smooth(method = lm)

ggplot(job, aes(x = y, y = x3)) +
  geom_point() +
  stat_smooth(method = lm)

model <- lm(y ~ x1 + x2 + x3, data = job)
model
summary(model)