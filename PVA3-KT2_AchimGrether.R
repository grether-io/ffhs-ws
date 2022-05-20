### Kurztest 2 - PVA 3 ###
###    Achim Grether   ###
### ------------------ ### 

##Aufgabe 1.1
# Vektor gehaelter
x <- c(44617, 7066, 17594, 2726, 1178, 18898, 5033, 37151, 4514, 4000)

##Aufgabe 1.2
#Arithmetisches Mittel => 14277.7
meanGehaelter <- mean(x)   

#Median => 6049.5
medGehaelter <- median(x)

##Aufgabe 1.3
#Konfidenzintervall 90%
# n < 30 somit gilt, Student T-Verteilung
n <- length(x) #Stichprobengroesse
xbar <- meanGehaelter #Mittel
sd = 15000 #Standardabweichung
alpha90 <- 1- (90 / 100)
t90 <- 1 - (alpha90 / 2) # alpha = 1 - 90%
margin90 <- qt(t90, df=(n-1)) * sd / sqrt(n) #Fehlerquote


#Untere Grenze => 5582.48
lower90 <- xbar - margin90

#Obere Grenze => 22972.92
upper90 <- xbar + margin90

#Konfidenzintervall 95%
# n < 30 somit gilt, Student T-Verteilung
n <- length(gehaelter) #Stichprobengroesse
xbar <- meanGehaelter #Mittel
sd = 15000 #Standardabweichung
alpha95 <- 1- (95 / 100)
t95 <- 1 - (alpha95 / 2)
margin95 <- qt(t95, df=(n-1)) * sd / sqrt(n) #Fehlerquote

#Untere Grenze KI95% => 3547.35
lower95 <- xbar - margin95
#Obere Grenze KI95% => 25008.05
upper95 <- xbar + margin95



##Aufgabe 2.2
#Der Standardfehler ist ein Mass dafür,wie stark ein beobachteter Parameter, etwa der Mittelwert oder der Median,
# in einer Stichprobe durchschnittlich vom wahren Parameter der Grundgesamtheit abweicht. Er beschreibt,
#wie stark sich verschiedene Stichprobenmittelwerte aus der gleichen Grundgesamtheit unterscheiden.

#Der Standardfehler des Mittelwerts gibt Auskunft darüber, wie gut wir den wahren Mittelwert der 
#Grundgesamtheit mit dem Mittelwert aus der Stichprobe schätzen können.
#Umso höher der Wert n ist, also die Anzahl der Stichproben, umso kleiner wird der Standardfehler.