#Carregando dados
data(iris)
head(iris)

#Gráfico Histograma
hist(iris$Sepal.Length,
     col = "orange",
     main = "Tamanho da Sépala Iris",
     xlab = "Sépala",
     ylab = "Frequência")

#Todos Gráficos Histogramas 
par(mfrow=c(2,2))
for(i in 1:4) {
  hist(iris[,i], main=names(iris)[i])
}