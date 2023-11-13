# Carregue o conjunto de dados Iris
data(iris)

# Visualize as primeiras linhas do conjunto de dados
head(iris)

#gráficos plot
plot(iris$Sepal.Length,iris$Sepal.Width, col= "blue")

#plot mais organizado
plot(iris$Petal.Length,iris$Petal.Width,
     main= "Iris Pétalas",
     xlab= "Comprimento Pétala",
     ylab ="Largura Pétala",
     col=iris$Species)