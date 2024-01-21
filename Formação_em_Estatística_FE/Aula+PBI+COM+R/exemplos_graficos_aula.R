#Exemplos aula comparação R VS PBI

#Gráfico de Setores/Pizza
#Variáveis utilizadas e criadas: sexo, sexo.1

freq_prop=prop.table(dataset$sexo.1)

pie(dataset$sexo.1,
    labels=paste(dataset$sexo,round(freq_prop*100,2),"%"),
    main="Gráfico de pizza - Frequência relativa classe social (%)",
    col=c("pink","lightblue"))

legend(1,1,dataset$sexo,col=c("pink","lightblue"),pch=rep(20,6))

#Gráfico de colunas
#Variáveis utilizadas e criadas: renda_familiar, estado_civil

#bibliotecas para carregar
#Tirar notação científica
options(scipen = 999)
library(dplyr)
library(ggplot2)

dataset = dataset %>%  arrange(desc(estado_civil))

dataset$renda_familiar = factor(dataset$renda_familiar, 
                                levels = c("De 1,5 a 3 salários mínimos",
                                           "Até 1,5 salário mínimo",
                                           "De 3 a 4,5 salários mínimos",
                                           "De 6 a 10 salários mínimos",
                                           "De 4,5 a 6 salários mínimos",
                                           "De 10 a 30 salários mínimos",
                                           "Acima de 30 salários mínimos")
)

ggplot(dataset,aes(renda_familiar,estado_civil)) + 
  geom_bar(position = "dodge",stat = "identity", fill="blue") +
  ggtitle("Gráfico de Barras do Número de alunos por renda familiar")+
  xlab("Faixa de renda familiar") +
  ylab("Quantidade de alunos") +
  theme(axis.text.x = element_text(angle = 90, vjust = 0.5, hjust=1))


#Gráfico de Nuvem de palavras mais frequentes 
#Variáveis utilizadas e criadas: GRUPO_CURSO, GRUPO_CURSO.1

#bibliotecas para carregar
library(wordcloud)

wordcloud(dataset$GRUPO_CURSO,
          freq = dataset$GRUPO_CURSO.1,
          random.order=T,
          colors=brewer.pal(n = 7, name = "Dark2"))

#Gráfico de barras 
#Variáveis utilizadas e criadas: renda_familiar, estado_civil

#Tirar notação científica
options(scipen = 999)

#bibliotecas para carregar
library(dplyr)
library(ggplot2)

dataset$renda_familiar = factor(dataset$renda_familiar, 
                                levels = c("Acima de 30 salários mínimos",
                                           "De 10 a 30 salários mínimos",
                                           "De 4,5 a 6 salários mínimos",
                                           "De 6 a 10 salários mínimos",
                                           "De 3 a 4,5 salários mínimos",
                                           "Até 1,5 salário mínimo",
                                           "De 1,5 a 3 salários mínimos"
                                )
)

ggplot(dataset,aes(renda_familiar,estado_civil)) + 
  geom_bar(position = "dodge",stat = "identity", fill="blue") +
  ggtitle("Gráfico de Barras do Número de alunos por renda familiar")+
  xlab("Faixa de renda familiar") +
  ylab("Quantidade de alunos") +
  theme(axis.text.x = element_text(angle = 90, vjust = 0.5, hjust=1))+ 
  coord_flip() 

#Gráfico de Dispersão
#Variáveis utilizadas e criadas:NT_GER, NU_IDADE, sexo, sexo.1
library(ggplot2)

ggplot(dataset, aes(x=NU_IDADE , y=NT_GER,col=sexo)) + 
  geom_point(size=1)+
  ggtitle("Gráfico de Dispersão da idade vs nota do alun por sexo")+
  xlab("Idade dos alunos") +
  ylab("Nota dos alunos")

#Gráfico Histograma
#Variáveis utilizadas e criadasrenda_familiar
library(ggplot2)

dataset$renda_familiar=ifelse(dataset$renda_familiar=="","Não informado",dataset$renda_familiar)

ggplot(dataset,aes(x=NT_GER)) +
  geom_histogram(color = "black",aes(fill=renda_familiar), bins =20)+
  ggtitle("Gráfico histograma dos notas por faixa de renda")+
  xlab("Notas") +
  ylab("Quantidade de Notas") +
  facet_wrap(~renda_familiar) +
  theme()

#Gráfico Pareto
#Variáveis utilizadas e criadasNT_GER, horas_estudos
library(ggplot2)
library(ggQC)
library(dplyr)

dataset$horas_estudos=ifelse(dataset$horas_estudos=="","Não informado",dataset$horas_estudos)
dataset$horas_estudos=ifelse(dataset$horas_estudos=="Nenhuma, apenas assisto Às aulas","Apenas assisto Às aulas",dataset$horas_estudos)

dataset = dataset %>% select(horas_estudos,NT_GER) %>%  
  group_by (horas_estudos)   %>%  
  summarize(soma_notas=sum(NT_GER,na.rm = T))

ggplot2::ggplot(dataset, aes(x = horas_estudos, y = soma_notas)) +
  ggQC::stat_pareto(point.color = "red",
                    point.size = 3,
                    line.color = "black",
                    bars.fill = c("blue", "orange")
  ) +
  theme(axis.text.x = element_text(angle = 90, hjust = 1, vjust=0.5))

#Gráfico Box-Plot
#Variáveis utilizadas e criadas:NT_GER, NU_IDADE, horas_estudos
library(ggplot2)

dataset$horas_estudos=ifelse(dataset$horas_estudos=="","Não informado",dataset$horas_estudos)

ggplot(dataset, aes(x=NT_GER , y=NU_IDADE,fill=horas_estudos)) + 
  geom_boxplot()+
  ggtitle("Gráfico de Box-plot da nota dos alunos por horas de estudo e idade")+
  xlab("Nota dos alunos") +
  ylab("Idade dos alunos")



#Grafo
#Variáveis utilizadas e criadas:NT_GER, estado_civil

# Cole ou digite aqui seu código de script:
library(igraph)
library(ggnetwork)
library(intergraph)
library(ITNr)
library(dplyr)
library(ggplot2)

dataset$estado_civil=ifelse(dataset$estado=="","Não informado",dataset$estado)


dataset=dataset %>% select(estado,NT_GER) %>%
  group_by(estado) %>%
  summarise(soma= sum(NT_GER,na.rm=T)) %>%
  #filter(Company != "") %>%
  arrange(desc(soma)) 
#head(10) %>% 


minimo=min(dataset$soma)

q2=quantile(dataset$soma,0.5)

q3=quantile(dataset$soma,0.75)

maximo=max(dataset$soma)


dataset$quartis= 
  cut(dataset$soma, breaks = c(minimo,q2,q3,maximo),
      labels = c("Notas até o primeiro quartil", 
                 "Notas entre o segundo e terceiro quartis", 
                 "Notas acima do terceiro quartil") 
      ,
      include.lowest = T)

#table(dataset$quartis)


adj_autor_temas=table(dataset$quartis,dataset$estado)
net_autores_temas <- graph_from_incidence_matrix(adj_autor_temas)
#table(V(net_autores_temas)$type)

net2=asNetwork(net_autores_temas)


plot(net2)

df3=data.frame(dataset$estado)

net2 %v% "Restaurantes" = dataset$estado

n<-ggnetwork(net2)

df3=data.frame(table(cbind(as.character(dataset$quartis),dataset$estado)))

n_merge=merge(n,df3, by.x=names(n)[5],by.y=names(df3)[1])


ggplot(n_merge, aes(x = x, y = y, xend = xend, yend = yend)) +
  geom_edges(color = "grey50") +
  geom_nodes(aes(color = vertex.names)) +
  geom_nodetext(aes(color = Restaurantes, label = vertex.names),
                fontface = "bold",size=3) +
  theme_blank()





