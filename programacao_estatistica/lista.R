#LISTA
# Criando uma lista
minhaLista <- list(
  nome = "João",
  idade = 25,
  notas = c(85, 90, 78),
  aprovado = TRUE
)

# Exibindo a lista
print(minhaLista)

# Acessando elementos da lista
print(paste("Nome:", minhaLista$nome))
print(paste("Idade:", minhaLista$idade))
print(paste("Notas:", toString(minhaLista$notas)))
print(paste("Aprovado:", minhaLista$aprovado))