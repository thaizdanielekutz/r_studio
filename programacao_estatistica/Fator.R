#FATOR
# Criando um vetor de dados categóricos
cores <- c("vermelho", "azul", "verde", "vermelho", "azul")

# Criando um fator a partir do vetor
fator_cores <- factor(cores)

# Exibindo o fator
print(fator_cores)

# Obtendo os níveis do fator
niveis <- levels(fator_cores)
print("Níveis do fator:")
print(niveis)

# Obtendo a contagem de cada nível
contagem_niveis <- table(fator_cores)
print("Contagem de cada nível:")
print(contagem_niveis)