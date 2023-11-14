#Carregamento de dados
dados(iris)
head(iris)

#Barplot
contagem = table(iris$Species)
dtIris = data.frame(contagem)
barplot(dtIris$Freq,names.arg = dtIris$Var1,
        main= "Iris",
        col = dtIris$Var1 )