#Carregamento de dados
data(iris)
head(iris)

# Contagem de ocorrências de cada espécie
contagem2 <- table(iris$Species)

# Nomes das espécies
nomes2 <- levels(iris$Species)

# Porcentagens arredondadas
porcent2 <- round(contagem2 / sum(contagem2) * 100, 2)

# Rótulos para o gráfico de pizza
rotulo2 <- paste(nomes2, "(", porcent2, "%)", sep="")

# Criar o gráfico de pizza
pie(contagem2, labels = rotulo2, main = "Distribuição de Espécies Iris", col = c("#003154", "#dd4a37", "green"))