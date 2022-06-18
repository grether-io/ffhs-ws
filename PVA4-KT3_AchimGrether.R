### Kurztest 3 - PVA 4 ###
###    Achim Grether   ###
### ------------------ ### 

## Aufgabe 
# laden der Daten
data <- mtcars
#Gib die erste Zeile aus
head(data)

#1.1 
dispData <- data$disp

mean(dispData)

#1.2
#mit der annahme der wahre mittelwert von 79 und alpha von 0.05.
# die nullhypothese wird angenommen da p-value grösser als alpha ist.
t.test(dispData, mu=180, conf.level = 0.95)

t.test(dispData, mu=230, conf.level = 0.95)


# chi labrary
xtab = table(survey$Smoke, survey$Exer)
print(xtab)
# standard wird alpha = 0.05 gewählt
chisq.test(xtab)


qchisq(1-0.05, df=2-1)
