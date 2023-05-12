#Variáveis qualitativas
#nominais

sexo=c("M", "F")
sexo
cor=c("Preto", "Castanho", "Azul", "Verde")
cor
cigarro=c("Fumante", "Não Fumante")
cigarro
doente=c("Doente", "Sádio")
doente
estado_civil=c("Solteiro(a)", "Casado(a)")
estado_civil

a_sexo=sample(sexo, size=100, replace= TRUE)
a_sexo
a_cor_olhos=sample(cor, size=100, replace= TRUE)
a_cor_olhos
a_fumante=sample(cigarro, size=100, replace= TRUE)
a_fumante
a_doente=sample(doente, size=100, replace= TRUE)
a_doente
a_estado_civil=sample(estado_civil, size=100, replace= TRUE)
a_estado_civil
a_dummy_estado_civil=ifelse(a_estado_civil=="Solteiro(a)", "1", "0")
a_dummy_estado_civil

variaveis_categorias_nominais=data.frame(a_sexo,
                                         a_cor_olhos,
                                         a_fumante,
                                         a_doente,
                                         a_estado_civil,
                                         a_dummy_estado_civil)

variaveis_categorias_nominais

view(variaveis_categorias_nominais)


#ggplot geral
#Elementos de um gráfico ggplot

#1. Base de dados que será utilizada
#2. Geometria que será utilizada (TIPO DE GRÁFICO)
#3. Aesthetic mapping (A parte estética do gráfico, eixos, cores, tamanhos, textos)
#4. Escala (Formato, unidade de medida)
#5. Rótulos, títulos, legendas, etc...

#Gráfico de colunas ou barras verticais
grafico_coluna_geral=ggplot(variaveis_categorias_nominais,aes(a_cor_olhos)) +
  geom_bar(position = "dodge", fill= "red")+
  ggtitle("Número de alunos por cor dos olhos")+
  xlab("cor dos olhos")+
  ylab("Frequência simples (Quantidade de alunos)")

ggplotly(grafico_coluna_geral)


#Gráfico de colunas ou barras verticais por sexo
grafico_coluna=ggplot(variaveis_categorias_nominais, aes(a_cor_olhos, fill= a_sexo)) +
  geom_bar(position = "dodge")+
  ggtitle("Número de alunos por cor dos olhos e sexo")+
  labs(fill="sexo")+
  xlab("Cor dos olhos")+
  ylab("Frequência simples (Quantidade de alunos)")

ggplotly(grafico_coluna)  


#Gráfico de colunas ou barras verticais (%)
grafico_coluna_porcent=ggplot(variaveis_categorias_nominais, aes(a_cor_olhos, fill=a_sexo)) +
  geom_bar(position = "dodge", aes(y = (..count..)/sum(..count..)))+
  ggtitle("Número de alunos por cor dos olhos e sexo (%)") +
  scale_y_continuous(labels = percent)+
  labs(fill="Sexo")+
  xlab("Cor dos olhos")+
  ylab("Frequência simples (Quantidade de alunos)")

ggplotly(grafico_coluna_porcent)









