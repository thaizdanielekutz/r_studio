#Funções
# Definindo uma função de soma
soma_dois_numeros <- function(a, b) {
  resultado <- a + b
  return(resultado)
}

# Chamando a função com dois números
resultado_soma <- soma_dois_numeros(3, 5)

# Exibindo o resultado
print(paste("A soma é:", resultado_soma))