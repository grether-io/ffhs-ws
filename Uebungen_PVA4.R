#Ergibt den kritischen wert (zweiseitig, 5%)
qt(1-0.05/2 , df=10-1)

xquer = c(750,762,741)
mean(xquer)
summary(xquer)
#standardabweichung s
sd(xquer)

#s-quadraht


#chi-square einseitig
qchisq(1-0.05, df=2-1)


#Personengewichte in Vektor schreiben
weight= c(75,76,81,67,88,81,84)
#Mittelwert
mean(weight)

#mit der annahme der wahre mittelwert von 79 und alpha von 0.05.
# die nullhypothese wird angenommen da p-value grösser als alpha ist.
t.test(weight, mu=79, conf.level = 0.95)

# die nullhypothese wird angenommen da p-value grösser als alpha ist.
t.test(weight, mu=83, conf.level = 0.95)

# die nullhypothese wird abgelehnt da der p-value kleiner als alpha ist.
t.test(weight, mu=99, conf.level = 0.95)

# import lybrary
library(MASS)
survey$Smoke
survey$Exer

# chi labrary
xtab = table(survey$Smoke, survey$Exer)
print(xtab)
# standard wird alpha = 0.05 gewählt
chisq.test(xtab)
