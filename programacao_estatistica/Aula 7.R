library(ggplot2)

ggplot(iris, aes(x = Sepal.Length, y = Sepal.Width, colour = as.factor(Species))) +
  geom_point()