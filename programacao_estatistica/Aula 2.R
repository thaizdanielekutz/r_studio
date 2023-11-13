data(iris)
head(iris)
# Criar um vetor x de valores
x <- seq(0, 2*pi, length.out = 100)

# Plotar a função seno (sin(x))
plot(x, sin(x),
     main = "Duas Linhas",  # Título do gráfico
     ylab = "",             # Rótulo do eixo y
     type = "l",            # Tipo de gráfico ("l" para linha)
     col = "blue")          # Cor da linha

# Adicionar a função cosseno (cos(x)) ao gráfico
lines(x, cos(x), col = "red")

# Adicionar uma legenda no canto superior esquerdo
legend("topleft",
       c("sin(x)", "cos(x)"),  # Rótulos para as linhas
       fill = c("blue", "red"))  # Cores correspondentes