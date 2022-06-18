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

##Erwartete Häufigkeiten
n <- sum(kreuztabelle)
erwartete_häufigkeiten <- outer (rowSums(kreuztabelle), colSums(kreuztabelle)) / ntete Häufigkeit

#Lässt man sich die Tabelle mit den erwarteten Häufigkeiten ausgeben, erhält man folgenden Output:

#  1        2        3        4        5         6
#0 3.058824 7.137255 5.607843 5.607843 3.568627 1.0196078
#1 2.941176 6.862745 5.392157 5.392157 3.431373 0.9803922
# Die Lesart ist analog zu den beobachteten Häufigkeiten. Für das Geschlecht 1 ist die erwartete Häufigkeit bei der Note 5: 3,43.
# Zur Erinnerung: sie wurde 3 mal beobachtet. Die Note 6 beim Geschlecht 0 wurde 1,02-mal erwartet. Oben wurde sie zweimal beobachtet. 
# So kann man jetzt zellenweise vorgehen und sich einen Eindruck verschaffen, wo erwartete und beobachtete Häufigkeiten mehr oder 
# weniger stark voneinander abweichen. Eine Faustregel, was eine große Abweichung gibt, existiert nicht. Dies ist immer in Relation 
# zum Stichprobenumfang zu sehen.

#------------------------------------------------------------------------------------------
#Kreuztabelle in SPSS
kreuztab <- xtabs (~ mtcars$mpg + mtcars$cyl)
kreuztab

#Ausgabe in Prozent
prop.table(kreuztab)

#Ausgabe kumuliert zeilenweise auf 100%
prop.table(kreuztab, 1)

#Ausgabe kumuliert spaltenweise auf 100%
prop.table(kreuztab, 2
           
           )

