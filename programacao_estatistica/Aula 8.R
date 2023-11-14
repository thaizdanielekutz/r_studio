library(ggplot2)

ggplot(iris, aes(x = Sepal.Length, y = Sepal.Width, colour = as.factor(Species), shape = as.factor(Species))) +
  geom_point() +
  labs(color = "Espécie") +  # Substituí "fill" por "color" para labels no ggplot
  xlab("Tamanho") +
  ylab("Comprimento") +
  ggtitle("Sépala Iris") +
  theme(
    plot.title = element_text(size = 14, face = "bold"),
    axis.title = element_text(size = 12),
    legend.title = element_blank(),
    legend.text = element_text(size = 10),
    legend.position = "bottom"
  )