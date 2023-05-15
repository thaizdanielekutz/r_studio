# variáveis Quantitativas
require(ggplot2)
require(dplyr)
require(scales)
require(plotly)
require(gridExtra)
require(tidyverse)

#ggplot geral
#Elementos de um gráfico ggplot

#1. Base de dados que será utilizada
#2. Aesthetic mapping (A parte estética do gráfico, eixos, cores, tamanhos)
#3. Geometria que será utilizada (Tipo de gráfico)
#4. Escala (Formato, unidade de medida)
#5. Rótulos, títulos, legendas, etc...


#Gráfico Histograma

view(iris)
dados=iris
grafico_hist = ggplot(dados, aes(x=Sepal.Length))+
  geom_histogram(color= "black", fill="lightblue", bins = 30)+
  ggtitle("Gráfico histograma do tamanho da Sépala das Plantas")+
  xlab("Tamanho das Sépalas")+
  ylab("Frequência simples")+
  theme()
grafico_hist
ggplotly(grafico_hist)

#Gráfico Box-Plot
dados=iris
grafico_boxplot = ggplot(dados, aes(x=Sepal.Length, y=Petal.Length, fill=Species))+
  geom_boxplot()+
  ggtitle("Gráfico de Box-plot do tamanho da Sépala vs o tamanho das Pétalas das plantas")+
  xlab("Tamanho das Sépalas")+
  ylab("Tamanho das Pétalas")
grafico_boxplot


#Gráfico de dispersão - cor espécies
dados=iris
grafico_dispersao_cor = ggplot(dados, aes(x=Sepal.Length, y = Petal.Length, col=Species))+
  geom_point(size=4)+
  ggtitle("Gráfico de Dispersão do tamanho da Sépala vs o tamanho das Pétalas das plantas")+
  xlab("Tamanho das Sépalas")+
  ylab("Tamanho das Pétalas")
grafico_dispersao_cor

#Gráfico de dispersão - tamanho
dados=iris
grafico_dispersao_tamanho = ggplot(dados, aes(x=Sepal.Length, y = Petal.Length, col=Species))+
  geom_point (aes(Species))+
  ggtitle("Gráfico de Dispersão do tamanho da Sépala vs o tamanho das Pétalas das plantas")+
  xlab("Tamanho das Sépalas")+
  ylab("Tamanho das Pétalas")
grafico_dispersao_tamanho
  

#Gráfico de dispersão - por Spécie
dados=iris
grafico_dispersao_especie = ggplot(dados, aes(x=Sepal.Length, y = Petal.Length, col=Species))+
  geom_point (size = 4)+
  ggtitle("Gráfico de Dispersão do tamanho da Sépala vs o tamanho das Pétalas das plantas")+
  xlab("Tamanho das Sépalas")+
  ylab("Tamanho das Pétalas")+
  facet_wrap(~Species)
grafico_dispersao_especie

  








