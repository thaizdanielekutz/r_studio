#Exercícios - Estatística Descritiva (Gabarito)

#Exercícios - Medidas de tendência Central e Dispersão

#Calcule Média Aritmética, Mediana, Moda e (Primeiro e Terceiro Quartis) e analise o comportamento quanto a Simetria e a Curtose das seguintes distribuições e diga qual medida de tendência central, você acha que melhor representa a distribuição dos dados, justificando sua escolha: 

#Instalando as bibliotecas
install.packages("e1071")
#Carregando as bibliotecas
require(e1071)

vetor_a=c(1,10,20,15,12,10,100,200,5)
media_aritmetica_a=mean(vetor_a)
mediana_a=median(vetor_a)
moda_a=as.numeric(names(table(vetor_a))[table(vetor_a) == max(table(vetor_a))])
#Média>Mediana>Moda:	Logo, temos uma assimetria à direita ou positiva e consequentemente os maiores valores da distribuição se concentram à esquerda.

#Várias de uma vez só:
resumo_a=c(summary(vetor_a),"moda"=moda_a)
  
#assimetria
skewness(vetor_a)
#como já sabíamos, temos uma assimetria à direita ou positiva e o coeficiente de assimetria de pearson corrobora a nossa análise, tendo um valor (>0).

#kurtose
kurtosis(vetor_a)
#k>0, Logo temos uma distribuição leptocúrtica (Pontiagúda)

vetor_b=c(50,40,55,60,65,67,69,70,75,80)
media_aritmetica_b=mean(vetor_b)
mediana_b=median(vetor_b)
#moda_b não existe, a Distribuição é amodal, não possui moda, portanto não cai em nenhum dos três casos conhecidos de assimetria e temos que utilizar obrigatóriamente o coeficiente de assimetria de pearson para conclusão do tipo de assimetria

#Várias de uma vez só:
resumo_b=c(summary(vetor_b))

#assimetria
skewness(vetor_b)
#como o coeficiente de assimetria de pearson foi (<0)  temos uma assimetria à esquerda ou negativa e consequentemente uma maior concentração dos maiores valores da distribuição à direita.

#Curtose
kurtosis(vetor_b)
#k<0, Logo, temos uma distribuição platicúrtica (Achatada no platô)

#Importante: Só poderemos afirmar qual medida representa melhor o conjunto, quando soubermos acerca da variabilidade dos dados. Portanto temos que calcular as medidas de dispersão primeiro, para afirmar.

#Calcule Amplitude, Variância, Desvio padrão e coeficiente de variação e diga qual distribuição você acha que os dados são mais homogêneos, justificando sua escolha: 

#vetor_a
amplitude_a=diff(range(vetor_a))
variancia_a=var(vetor_a)
desvio_padrao_a=sd(vetor_a)
coeficiente_de_variacao_a=desvio_padrao_a/mean(vetor_a)*100

#Analisando a) separadamente, por meio do coeficiente de variação, que é a única medida de dispersão que permite comparações individuais, chegamos a conclusão que seu coeficiente de variação foi muito superior ao limite que consideramos homogêneo (<=25 %), apresentando o valor 161% nos levando a concluir uma heterogeneidade elevada em suas observações.

#vetor_b
amplitude_b=diff(range(vetor_b))
variancia_b=var(vetor_b)
desvio_padrao_b=sd(vetor_b)
coeficiente_de_variacao_b=desvio_padrao_b/mean(vetor_b)*100

#Já analisando b) separadamente, por meio do coeficiente de variação, que é a única medida de dispersão que permite comparações individuais, chegamos a conclusão que seu coeficiente de variação foi inferior ao limite que consideramos homogêneo (<=25 %), apresentando o valor 19% nos levando a concluir uma distribuição homogênea em suas observações.

#Conclusões gerais:

#Analisando conjuntamente, Percebemos que a distribuição de a) considerando todas as medidas de dispersão, foi a mais heterogênea e portanto apresentou uma maior distanciamento de seus valores em torno da média.

#Dessa forma, conseguimos então agora dizer que a média seria a melhor medida para ser utilizada em b) por ser uma distribuição mais homogênea, não tendo problemas com sua propriedade de ser volátil (Sensível a valores extremos), em contrapartida a) seria melhor representada pela mediana e moda, uma vez que são estatísticas mais robustas (Menos sensíveis a valores extremos).



