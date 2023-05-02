require(e1071)
#Amostra0
c0=c(2,3,6,9)
#Média
mean(c0)
#Mediana
median(c0)
#Moda
#as.numeric(names(table(c0))[table(c0)] == max(table(c0))])
#Amodal
summary(c0)
#Divide como se fosse matriz
par(mfrow=c(2,2))
#Gráfico de barras
barplot(c0)
#Histograma de frequência simples
hist(c0)
#Histograma de frequência relativa
hist(c0,probability = T)
#Plotar a distribuição
lines(density(c0))
#Calcular simétria 
skewness(c0)
#Calcular curtose
kurtosis(c0)
# Pelo R temos que se
# k > 0, Leptocúrtica 
# k = 0, Mesocúrtica 
# k < 0, Platicúrtica
