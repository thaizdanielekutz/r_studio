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
