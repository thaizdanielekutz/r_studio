#Aula prática R - Tipos de Frequências 
#quando precisar chamar a função

require(Hmisc)

#Primeira forma de criar vetor
idade=c(10,10,10,10,30,30,30,30,30,30,30,30,50,50,50,50,70,70,70,90)

#Segunda forma de criar vetor
idade=c(rep(10,4),rep(30,8),rep(50,4),rep(70,3),rep(90,1))

#Achando as frequências simples
frequencia_simples=table(idade)

#Visual Excel
dados_simples=data.frame(frequencia_simples)

#Frequência Acumulada
frequencia_acumulada=cumsum(frequencia_simples)

dados_acumulada=data.frame(frequencia_acumulada)

#Adicionando coluna com a acumulada 
dados_simples$frequencia_acumulada=frequencia_acumulada

#Frequência Relativa Simples
frequencia_relativa_simples=frequencia_simples/sum(frequencia_simples)

#Adicionando frequência relativa simples
dados_simples$frequencia_relativa_simples=frequencia_relativa_simples

#Frequência Relativa Acumulada
frequencia_relativa_acumulada=frequencia_acumulada/sum(frequencia_simples)

#Adicionando frequência Relativa Acumulada
dados_simples$frequencia_relativa_acumulada=frequencia_relativa_acumulada

#Achando de maneira automática a frequência simples e a frequência relativa simples
describe(idade)

#Fazer tudo em menos passos 
require(dplyr)

#Aplicar a função
dados_simples %>% head()

dados_simples_tidy= dados_simples %>%
                    mutate(frequencia_acumulada = cumsum(Freq),
                           frequencia_relativa_simples = Freq/sum(Freq),
                           frequencia_relativa_acumulada = cumsum(frequencia_relativa_simples))




