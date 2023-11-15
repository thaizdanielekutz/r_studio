#VETORES

# Supondo que você tenha criado meuVet anteriormente
meuVet <- c("a", "b")

# Adicionando "c" ao final do vetor
meuVet[length(meuVet) + 1] <- "c"

# Verificando o resultado
print(meuVet)

# Inicializando um novo vetor
meuVet <- character(0)

# Adicionando "c" ao final do vetor
meuVet[length(meuVet) + 1] <- "c"

# Verificando o resultado
print(meuVet)