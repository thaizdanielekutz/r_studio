#Tipos de frequências

idade =c(10,10,10,10,30,30,30,30,30,30,30,30,50,50,50,50,70,70,70,90)
idade

#Achando as Frequências simples
frequencia_simples=table(idade)
table(idade)

#Visual Excel
dados_simples=data.frame(frequencia_simpples)
data.frame(frequencia_simpples)

#Frequência Acumulada
frequencia_acumulada=cumsum(frequencia_simpples)
frequencia_acumulada

#Adicionando coluna com frequência acumulada
dados_simples$frequencia_acumulada=frequencia_acumulada
dados_simples

#Frequência Relativa Simples
frequencia_relativa_simples=frequencia_simpples/sum(frequencia_simpples)
frequencia_relativa_simples

dados_simples$frequencia_relativa_simples=frequencia_relativa_simples
dados_simples

#Frequência relativas acumuladas
frequencia_relativa_acumulada=frequencia_acumulada/sum(frequencia_simpples)
frequencia_relativa_acumulada

dados_simples$frequencia_relativa_acumulada=frenquencia_relativa_acumulada
dados_simples

#Achando automaticamente a frequência simples e relativa
describe(idade)

head(dados_simples)

dados_simples %>% head() %>% funcao1() %>% funcao2()

dados_simples_tidy=dados_simples %>%
  mutate(frequencia_acumulada = cumsum(Freq),
         frequencia_relativa_simples= Freq/sum(Freq),
         frequencia_relativa_acumulada=cumsum(frequencia_relativa_simples))

dados_simples_tidy


