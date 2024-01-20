#Gráficos Estatísticos no R (ggplot2, plotly e GGally)

require(ggplot2)
require(dplyr)
require(scales)
require(plotly)
require(gridExtra)
require(tidyverse)

#Gráfico Histograma

dados=iris
grafico_hist = ggplot(dados, aes(x=Sepal.Length))+
  geom_histogram(fill="lightblue", bins=30)+
  xlab("Tamanho das Sépalas")+
  ylab("Frequência simples")+
  ggtitle("Gráfico histograma do tamanho da Sépala das Plantas")+
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

#Gráfico de linhas do desemprego nos Estados Unidos de 1967 a 2015 - Economics
dados2=economics
grafico_linhas = ggplot(economics, aes(x=date, y=unemploy))+
  geom_line(col="red")+
  xlab("Ano")+
  ylab("Desemprego (em milhares)")+
  ggtitle("Desemprego nos Estados Unidos de 1967 a 2015 - Economics")
grafico_linhas

#Agrupando os gráficos na mesma janela com ggplot2
grid.arrange(
  grafico_hist,
  grafico_boxplot,
  grafico_dispersao_cor,
  grafico_dispersao_tamanho,
  grafico_dispersao_especie,
  grafico_linhas,
  nrow=3, ncol=2)


require(esquisse)

esquisser(viewer = "browser")









