#Spannweite
max(data, na.rm = TRUE) - min(data, na.rm = TRUE)

#Standardabweichung
sd(data, na,rm = FALSE)

#Variationskoeffizient (in %  dann * 100)
cv <- sd(data) / mean(data) * 100

#Median
#Der Wert, der genau in der Mitte einer Datenverteilung liegt
median(data)

#Arithmetisches Mittel
mean(x)

#Geometrisches Mittel
exp(mean(log(x)))

#Harmonisches Mittel
1/mean(1/testdf$age)

#Modus(Modalwert) eines Vectors berechnen
#Er ist definiert als der häufigste Wert, der in der Stichprobe vorkommt
getmode <- function(v) {
  uniqv <- unique(v)
  uniqv[which.max(tabulate(match(v, uniqv)))]
}

sort(table(testdf$age)) # Modalwert - alternative möglichkeit

#Empirische Varianz von x
var(x)
#Empirische Kovarianz von x
cov(x,y)

#------------------------------------------------------------------------------------------
#Häufigkeitstabelle (absolut)
table(data)

#Relative Häufigkeiten
#mit den Daten der Häufigkeitstabelle
prop.table(data)