require(e171)

#Amostra0

c0=c(2,3,6,9)
c0

#média
mean(c0)

#Mediana
median(c0)

#moda
#as.numeric(names(table(c0))[table(c0)])== max([(table(c0))])
summary(c0)
par(mfrow=c(2,2))
barplot(c0)
hist(c0)
hist(c0,probability = T)
lines(density(c0))
skewness(c0)
kurtosis(c0)

#Pelo R, temos que:
# k > 0, leptocúrtica
# k = 0, Mesocúrtica
# k < 0, Platicúrtica



