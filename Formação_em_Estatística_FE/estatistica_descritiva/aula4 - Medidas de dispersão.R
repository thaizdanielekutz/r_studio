#Medidas de dispersão

iris
view(iris)

#amostra0
a0=iris$Sepal.Length
a0

#Amplitude amostral
h0= diff(range(a0))
h0

#Variância amostral
variancia0=var(a0)
varianca0

#Variância populacional
var(a0)*(length(a0)-1)/length(a0)

#Desvio padrão amostral
sd(a0)
sd0 = sd(a0)
sd0
sqrt(variancia0)

#Coeficiente de variação amostral
cv0=sd(a0)/mean(a0)*100
cv0

#amostral
a1=iris$Petal.Length

#Amplitude amostral
h1= diff(range(a1))
h1

#Variância amostral
variancia1=var(a1)
variancia1

#Variância populacional
var(a1)*(length(a1)-1)/length(a1)

#Desvio padrão amostral
sd(a1)
sd1 = sd(a1)
sd1
sqrt(variancia1)

#Coeficiente de variação amostral
cv1=sd(a1)/mean(a1)*100
cv1

c(h0,h1)
c(variancia0,variancia1)
c(sd0,sd1)
c(cv0,cv1)
c(mean(a0),mean(a1))


#Comparação
plot(a0)
abline(h=mean(a0))

plot(a1)






