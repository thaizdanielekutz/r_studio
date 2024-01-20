
#amostra1
c1=c(7,1,5,2,3,1,6)
c1

#média
mean(c1)

#mediana
median(c1)

#moda
as.numeric(names(table(c1))[table(c1) == max(table(c1))])

#gráficos
barplot(c1)
hist(c1)
hist(c1,probability = T)
lines(density(c1))

#análises
skewness(c1)
kurtosis(c1)
summary(c1)


#Amostra2
c2=c(1,2,1,1,4,5,3,6)
c2

#média
mean(c2)

#mediana
median(c2)

#moda
as.numeric(names(table(c2))[table(c2) == max(table(c2))])

#gráficos
barplot(c2)
hist(c2)
hist(c2,probability = T)
lines(density(c2))

#análises
skewness(c2)
kurtosis(c2)
summary(c2)
