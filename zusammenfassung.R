# Variable zuweisen
alpha<-5

# Variable ausgeben
print(alpha) # 5

# Typ von Variable anzeigen
typeof(alpha) # "double"

# Print und typeof gleichzeitig ausgeben
str(alpha) # num 5

# Variable loeschen
rm(alpha)

# Console leeren
# ctrl + L

# String Variable zuweisen
c = "Hallo"
d = "Hallo"

# Variablen vergleichen
# "ist gleich"
c == d # TRUE

# "ist nicht gleich"
c != d # FALSE

# pruefen ob Variable nummerisch ist
is.numeric(c) # = FALSE

# Pruefen ob Variable ein bool ist
is.logical(c == d) # = TRUE

# Als speziellen Datentyp ausgeben
as.character(5) # String
as.integer(5) # Nummerisch

################################## Rechenoperationen ###############
#Wurzel ziehen
sqrt(25) # 5

#Hoch rechnen
5^15 # =30517578125
30517578125^(1/15) # 5 (Ergebnis Pruefen)

# Betrag berechnen
abs(-3) # 3

# Log zur Basis e berechnen
log(100)

#Log zur Basis 10 berechnen
log10(100)

# Eulerische Zahl
exp(1)

# Runden
round(5.5) # = 6
round(5.4) # = 5

# Immer aufrunden
ceiling(5.1) # = 6

# Immer abrunden
floor(5.9) # = 5

################################## Vektoren ###############
## Vektoren anlegen
vektor1<-c(1,2,3,4,5) # 1 2 3 4 5

## Einzelne Element von Vektor auslesen
vektor1[2] # 2
vektor1[5] # 5

## Mehrere Elemente eines Vektors ausgeben
vektor1[c(2,4)] # 2 4

## Vektor von Zahlenreihe erstellen
c(1:10) # 1  2  3  4  5  6  7  8  9 10

## Sequenz von 1-5 in 0.5er Schritten
seq(1,5, by=0.5) # 1.0 1.5 2.0 2.5 3.0 3.5 4.0 4.5 5.0

## Wiederholende nummern in einer Reihe definieren
rep(c(1:3),times=2) # 1 2 3 1 2 3
rep(c(1:3), each=2) # 1 1 2 2 3 3

## Individueller Datensatz mit mehreren gleichen Elementen
x1<-1
x2<-2
x3<-3
x4<-4
x5<-5

anzahlx1<-6
anzahlx2<-12
anzahlx3<-30
anzahlx4<-18
anzahlx5<-51

vektor <- c(rep(x1,times=anzahlx1), rep(x2,times=anzahlx2), rep(x3,times=anzahlx3), rep(x4,times=anzahlx4), rep(x5,times=anzahlx5))
vektor

################################## Matrizen ###############
# Matrizen erstellen
# 1. Zwei Vektoren erstellen
c1 <- c(1:3) # 1    2    3
c2 <- c(4:6) # 4    5    6

# 2. Vektoren uebereinander zusammentragen
rbind(c1,c2) 
#     [,1] [,2] [,3]
# c1    1    2    3
# c2    4    5    6

# 2. Vektoren nebeneinander zusammentragen
cbind(c1,c2)  
#     c1 c2
#[1,]  1  4
#[2,]  2  5
#[3,]  3  6

# Oder direkt
matrix(c(1:6),nrow=2, ncol=3)   
#     [,1] [,2] [,3]
# c1    1    2    3
# c2    4    5    6

matrix(c(1:6),nrow=3, ncol=2)   
#     c1 c2
#[1,]  1  4
#[2,]  2  5
#[3,]  3  6

# Matrix Reihenweise befuellen
matrix(c(1:6),nrow=3, ncol=2, byrow = T)
#       [,1] [,2]
# [1,]    1    2
# [2,]    3    4
# [3,]    5    6

#Beispielmatrix
m <- matrix(c(1:6),nrow=2, ncol=3,byrow = T)
#     [,1] [,2] [,3]
# c1    1    2    3
# c2    4    5    6

# Auf Matrixelemente zugreifen
m[2,2] # 5
m[,2]  # 2 5
m[,1]  # 1 4
m[2,]  # 4 5 6
m[1,]  # 1 2 3
# Bsp. 1. und 2. Zeile von 3. Spalte
m[c(1,2),3] # 3 6

# Matrizen koennen in R immer nur ein Datentyp aufweisen
testmatrix <- matrix(c(1:5, "abc"), nrow=3,ncol=2)
testmatrix
#      [,1] [,2] 
# [1,] "1"  "4"  
# [2,] "2"  "5"  
# [3,] "3"  "abc"

################################## Data Frames ###############
## Data Frames selber erstellen Beispiel 1 ---------------
PatNr <- c(1:20)
Geschlecht <- rep(c("w","m"),10) # w und m nacheinander 10 mal wiederholen
Messwerte <- runif(20,20,30) # 20 Zufallszahlen von 20 - 30
Messwerte <- round(Messwerte,2) # auf zwei Nachkommazahlen runden

daten1 <- data.frame(PatNr, Geschlecht, Messwerte) # Zu einem Datensatz kombinieren
show(daten1)

## Data Frames Manipulieren ------------------------------

# Data Frame anzeigen und korrigieren
fix(daten1)

# Uebersicht erster 6 Elemente 
head(daten1)

# Variablennamen ausgeben
names(daten1)

# Datentypen und Inhalt
str(daten1)

# Einzelne Zeile ausgeben
daten1$PatNr

# neue Spalte hinzufuegen Bsp: Alter von zufälligen Zahlen von 18-30
daten1$Alter <- round(runif(20,18,30))
daten1

# Spalte hinzufuegen (anderes Beispiel)
daten1$Index<-c(1:20)
daten1

# Mit Tabelleninhalten rechnen
Analysewert <- daten1$Messwerte/2 + 3 # Rechnet bei allen Messwerten /2+3
Analysedaten <- data.frame(Analysewert) # Schreibt das ganze in ein neues Data Frame
show(Analysedaten)

# Daten exportieren
write.table(daten1, "Testdaten.csv", sep=";",na="")

# Als RData Datei speichern
save(daten1, file = "C:/R/Output/dateiname.RData")
load("C:/R/Output/dateiname.RData") # Wird auch wieder als daten1 eingelesen!
daten1

# nach Spalten sortieren
daten1<-daten1[order(daten1$Geschlecht),]
# oder einen einfachen vektor ordnen
vektor <- c(2, 2, 6, 4, 7, 5, 2, 1, 8, 5)
vektor<-vektor[order(vektor)]

# nach mehreren Spalten sortieren
daten1<-daten1[order(daten1$Geschlecht, daten1$Messwerte),]
daten1

## Data Frames selber erstellen Beispiel 2 ---------------
# Data Frame erstellen
daten2 <- matrix(c(1,1,1,
                   2,2,2,
                   3,3,3,
                   4,4,4,
                   5,5,5,
                   6,6,6), nrow = 3, ncol = 6)

# in Dataframe umwandeln
daten2 <- data.frame(daten2)

# Spalten und Zeilen benennen
colnames(daten2) <- c("Col_1", "Col_2", "Col_3", "Col_4", "Col_5", "Col_6")
rownames(daten2) <- c("Row_1", "Row_2", "Row_3")

show(daten2)
View(daten2)

## Data Frames "NA" leere zeichen / felder ----
# Umkodierung fuer einzelne Variablen
daten2$Var_3[daten2$Var_3 == 99] <- NA

# Umkodierung fuer den gesamten Datensatz
daten2[daten2 == 99 | daten2 == -99] <- NA

# Schauen, ob NA's in der Liste sind
anyNA(daten2)

# Die Ganze Liste anzeigen mit den NA's
is.na(daten2)

## Vektor mit mehreren gleichen Elementen erstellen ----
# Falls nur wenige Elemente
vektor <- c(1, 2, 2, 2, 4, 5, 5, 6, 7, 8)
vektor

# Werte
x1 <- 1
x2 <- 2
x3 <- 3
x4 <- 4
x5 <- 5
x6 <- 6
x7 <- 7
x8 <- 8
x9 <- 9
x10<- 10

# Anzahl der Werte
anzahlx1 <- 1
anzahlx2 <- 2
anzahlx3 <- 3
anzahlx4 <- 4
anzahlx5 <- 5
anzahlx6 <- 6
anzahlx7 <- 7
anzahlx8 <- 8
anzahlx9 <- 9
anzahlx10<- 10

# 4 Variablen
vektor <- c(rep(x1,times=anzahlx1), rep(x2,times=anzahlx2), rep(x3,times=anzahlx3), rep(x4,times=anzahlx4))
vektor

# 5 Variablen
vektor <- c(rep(x1,times=anzahlx1), rep(x2,times=anzahlx2), rep(x3,times=anzahlx3), rep(x4,times=anzahlx4), rep(x5,times=anzahlx5))
vektor

# 6 Variablen
vektor <- c(rep(x1,times=anzahlx1), rep(x2,times=anzahlx2), rep(x3,times=anzahlx3), rep(x4,times=anzahlx4), rep(x5,times=anzahlx5), rep(x6,times=anzahlx6))
vektor

# 7 Variablen
vektor <- c(rep(x1,times=anzahlx1), rep(x2,times=anzahlx2), rep(x3,times=anzahlx3), rep(x4,times=anzahlx4), rep(x5,times=anzahlx5), rep(x6,times=anzahlx6), rep(x7,times=anzahlx7))
vektor

# 10 Variablen
vektor <- c(rep(x1,times=anzahlx1), rep(x2,times=anzahlx2), rep(x3,times=anzahlx3), rep(x4,times=anzahlx4), rep(x5,times=anzahlx5), rep(x6,times=anzahlx6), rep(x7,times=anzahlx7), rep(x8,times=anzahlx8), rep(x9,times=anzahlx9), rep(x10,times=anzahlx10))
vektor

################################## Daten einlesen ###############
# .RDATA Datensatz aus einem Subfolder laden
load('/Users/achim/GitHub/RStudioProjects/FFHS_WS/datensatz1.RData')
#load('/Users/achim/GitHub/RStudioProjects/FFHS_WS/datensatz1.RData', na="NA")

# .XLS Datensatz einlesen
read.table('/Users/achim/GitHub/RStudioProjects/FFHS_WS/datensatz2.xls', na="NA")

# .CSV Datensatz einlesen
read.csv2('/Users/achim/GitHub/RStudioProjects/FFHS_WS/datensatz3.csv', na="NA")

# Oeffnet eine Auswahl, um eine Datei auszuwaehlen
file.choose() # Output Bsp. [1] "Z:\\FFHS\\WS\\R\\R_Scripts\\Einfuehrung\\Datensaetze\\datensatz2.xls"

# waehrend dem Einlesen erst die Datei auswaehlen
read.csv2(file.choose())

# Grobe Uebersicht des Datensatzes
summary(datensatz1)

# Datensatz in Tabelle anzeigen
View(datensatz1)
View(df_CSV)

# Datensatz einem DataFrame zuweisen
df_Rdata<-data.frame(datensatz1)
df_CSV<- data.frame(read.csv2('/Users/achim/GitHub/RStudioProjects/FFHS_WS/datensatz3.csv', na="NA"))


################################## Daten bereinigen ################
# R internen Datensatz für Beispiele
mtcars

# Datensatz Filtern cyl ist gleich 8 und hp groesser als 160
mtcars[(mtcars$cyl=="8") & (mtcars$hp>160),]

# Auswahl abspeichern
betrachteteAutos<- mtcars[(mtcars$cyl=="8")& (mtcars$hp>160),]

# Daten anpassen: den ersten Eintrag von der Spalte mpg auf 20.9 aendern
betrachteteAutos
betrachteteAutos$mpg[1] <- 20.9
betrachteteAutos

# Grosser Datensatz Filtern (in der 11 Spalte ist der Eintrag 2 |(oder) 4)
betrachteteAutos[,11]=="2"|betrachteteAutos[,11]=="4"

# Welcher Dateneintrag entspricht nicht dem eingestellten Filter
which((betrachteteAutos[,11]=="2"|betrachteteAutos[,11]=="4")==FALSE)

# Die falschen Daten korrigieren
betrachteteAutos[3,11]<-"2"
betrachteteAutos[4,11]<-"2"
betrachteteAutos[5,11]<-"2"
betrachteteAutos[12,11]<-"2"

# ganze Zeile rausloeschen
betrachteteAutos<- mtcars[(mtcars$cyl=="8")& (mtcars$hp>160),]
betrachteteAutos <- betrachteteAutos[c(1:5),]
betrachteteAutos

NEO_original <- read.csv("C:/Users/achim/Downloads/NEO_original.csv", sep=";")
View(NEO_original)

# ganze Spalten rausloeschen
betrachteteAutos <- betrachteteAutos[c(1:5,7:11)]
betrachteteAutos

# Variable umbenennen
colnames(betrachteteAutos)[1]<-"NEUER NAME"
betrachteteAutos


################################## Diagramme ausgeben ################
## Beispiel Datensatz ------------------------
# Datensatz erstellen als Datenquelle
alter <- round(runif(20,18,30))
gewicht <- round(runif(20,60,90))
haarfarbe <- rep(c("schwarz","braun","blond","Glaze"),times=5)
geschlecht <- rep(c("Mann", "Frau", "Diverse", "Frau"), each= 5)
datensatz1 <- data.frame(alter, gewicht, haarfarbe, geschlecht)
datensatz1

## Beschreibung plot() Variablen -----------------
# Option	              Beschreibung
# main = "string"	      Titel (Überschrift) der Grafik
# sub = "string"	      Untertitel
# xlab = "string"	      x-Achsenbeschriftung (label)
# ylab = "string"	      y-Achsenbeschriftung
# xlim = c(x1, x2)	      Wertebereich der x-Achse (von - bis)
# ylim = c(y1, y2)	      Wertebereich der y-Achse; c(y2, y1) um die Achse "umzudrehen"
# axes = TRUE/FALSE	      Achsen anzeigen oder unterdrücken
# ann = TRUE/FALSE	      unterdrückt Beschriftungen (Titel, labels), für "annotation"
# frame.plot = TRUE/FALSE	Rahmen anzeigen oder nicht
# type = "."	            l = Linien, p = Punkte, b = Linien + Punkte, 
#                         n = keine (nur Achsen), o = überlagerung, 
#                         h = vertikale Verbindungen zur x-Achse (histogrammartig), 
#                         s = Treppenfunktion

## Alles anzeigen ----
plot(airquality)
plot(airquality$Temp)

## Verteilungsfunktion ----
# (ecdf= empirische kummulierte Verteilungsfunktion)
plot(ecdf(datensatz1$alter))
plot(ecdf(airquality$Temp))

## Histogramme ----
# (x muss nummerisch sein)
hist(datensatz1$alter) # Standard ohne angaben zu dem Histogramm
hist(datensatz1$alter, breaks = 12) # Anzahl Unterteilungen bestimmen
hist(datensatz1$alter, breaks = c(18,25,26,27,28,30)) # Die Unterteilungen selber definieren mit einem vektor
# Mit Beschriftungen:
hist(airquality$Temp, main = "Temperatur der Luftqualität", xlab = "Temperatur in Grad Celsius", ylab = "Anzahl der gemessenen Werte")
hist(datensatz1$gewicht)
hist(datensatz1$haarfarbe) # geht nicht, da die Haarfarbe nicht nummerisch ist!!

## Boxplot ----
# (ausreissen werden in R mit Punkten angezeigt)
boxplot(datensatz1$alter)
boxplot(datensatz1$gewicht)

## Kreisdiagramm ----
# Vektor erstellen als Datenquelle
Merkmalsauspraegung<-c(1, 0, 0, 1, 0, 1, 1, 0, 0, 0, 1, 0, 1, 1, 0, 1, 0, 0)

# Prozent ausrechnen und runden
table(Merkmalsauspraegung) # erstellt eine Tabelle
sum(table(Merkmalsauspraegung)) # zaehlt alle Tabelleneintraege
# table/sum = Verhaeltnis der Haeufigkeit
# (table/sum) * 100 = Haeufigkeit in Prozent %
# round = Rundung der Prozentzahl
prozent <- round(table(Merkmalsauspraegung)/sum(table(Merkmalsauspraegung))*100, 1)

# Die Beschriftung der Merkmalsauspraegungen wird erstellt
# Diese soll die 0 und 1 ersetzen
beschriftung <- c("freier Tag","Geld")

# mit paste werden Zeichen zusammengesetzt
beschriftung<- paste(beschriftung, prozent, "%", sep = " ")

# pie erstellt ein Kreisdiagramm
pie(table(Merkmalsauspraegung), labels = beschriftung)

## Saeulendiagramm ----
# Vektor erstellen als Datenquelle
Merkmalsauspraegung<-c(1, 0, 0, 1, 0, 1, 1, 0, 0, 0, 1, 0, 1, 1, 0, 1, 0, 0)

# Fuer das Saeulendiagramm muss die Beschriftung anders erfolgen:
# Es wird den Zahlen der Merkmalsauspraegung einen Faktor zugewiesen
Merkmalsauspraegung <- factor(Merkmalsauspraegung,
                              levels = c(0, 1),
                              labels = c("freier Tag", "Geld"))
# barplot gibt ein Saeulendiagramm aus
barplot(table(Merkmalsauspraegung), xlab = "Antworten", ylab = "Anzahl Stimmen")

################################## Deskriptive/Beschreibende Statistik ################
# Beispiel Datensatz -------------------------------
# Datensatz selber erstellen von Temperatur an Anzahl Tagen
# Werte:
x1<-1
x2<-2
x3<-3
x4<-4
x5<-5

anzahlx1<-6
anzahlx2<-12
anzahlx3<-30
anzahlx4<-18
anzahlx5<-51

vektor <- c(rep(x1,times=anzahlx1), rep(x2,times=anzahlx2), rep(x3,times=anzahlx3), rep(x4,times=anzahlx4), rep(x5,times=anzahlx5))


# Diskrete Häufigkeiten -------------------------------
# Einfache absolute Häufigkeit
H <- table(vektor)
H

# relative Haeufigkeiten
h <- prop.table(H)
h <- round(h, 3) # das Ergebnis runden wir noch auf 3 Kommastellen.
h

# Aufsummieren der relativen Haeufigkeiten für die Verteilungsfunktion
AufsummierenDerHaeuigkeiten <- function(data){
  n<-length(data)
  count<-1
  while (count != n) {
    print(sum(data[1:count]))
    count <- count + 1
  }
}
AufsummierenDerHaeuigkeiten(h)

# kumulierte absolute Haeufigkeiten
Hkum <- cumsum(H)
Hkum

# kumulierte relative Haeufigkeiten
hkum <- cumsum(h)
hkum <- round(hkum, digits = 2) # das Ergebnis runden wir noch auf 2 Kommastellen
hkum

# In einer Matrix zusammenfassen
cbind(H, h, Hkum, hkum)

# Haeufigkeitsdichtefunktion
Haeufigkeitsdichtefunktion <- function(RelHaeufigkeit, breite){
  RelHaeufigkeit/breite*100
}
Haeufigkeitsdichtefunktion(h,500)


# Stetige Häufigkeiten -------------------------------
# Beispieldaten einlesen
neo_dat <- read.csv("C:/Users/achim/Downloads/NEO_original.csv", header=FALSE, sep=";")
View(NEO_original)
neo_dat <- NEO_original[-c(21),]

range(neo_dat$Age)
fix(NEO_original)
show(NEO_original)
write.table(NEO_original2, "C:/Users/achim/Downloads/NEO_original.csv", sep=";",na="")

################################## Lagemasse ################
# Beispiel Datensatz -------------------------------
# Datensatz selber erstellen von Temperatur an Anzahl Tagen
# Werte:
x1<-1
x2<-2
x3<-3
x4<-4
x5<-5

anzahlx1<-6
anzahlx2<-12
anzahlx3<-30
anzahlx4<-18
anzahlx5<-51

vektor <- c(rep(x1,times=anzahlx1), rep(x2,times=anzahlx2), rep(x3,times=anzahlx3), rep(x4,times=anzahlx4), rep(x5,times=anzahlx5))
vektor

# Median ausrechnen ---------------------------------------
# von Hand:
vektor # nummer ablesen n+1/2 bei ungerade oder 

# Oder diese Funktion verwenden:
median_ <- function(vektor){ 
  if(setequal(length(vektor)%%2,0)){
    print((vektor[length(vektor)/2]+vektor[length(vektor)/2+1])/2)
  } else {
    print(vektor[length(vektor)/2])
  }
}
median_(vektor)

# Oder in R:
median(vektor) # = 28 

# Arithmetisches Mittel -----------------------------------
# Von Hand:
((13*27)+(30*28)+(15*29)+(2*35))/60 # = 28.26667

# oder mit R:
mean(vektor) # = 28.26667

# geometrisches Mittel ------------------------------------
show(airquality)
library(psych)
x = c(0.75,0.8,0.3) # Wichtig: Es wird mit den Verhältnisen gerechnet!
psych::geometric.mean(airquality$Temp)
psych::geometric.mean(x)

# Modus ---------------------------------------------------
# na.rm=T entfernt fehlende Werte aus einer Liste
Mode = function(x,na.rm=FALSE) {
  if(na.rm){
    x = na.omit(x)
  }
  ux = unique(x)
  return(ux[which.max(tabulate(match(x, ux)))])
}
Mode(airquality$Temp,na.rm=T)

# Quantile ------------------------------------------------- 
quantile_round_up <- function(vektor, quantile){
  if(setequal((quantile*length(vektor)),round(quantile*length(vektor)))){
    (1/2)*((vektor[quantile*length(vektor)])+(vektor[(quantile*length(vektor))+1]))
  } else{
    vektor[ceiling(quantile*length(vektor))]
  }
}

quantile_round_up(vektor,0.5)

# oder in R
quantile(vektor, probs=c(0.25,0.5,0.75),na.rm=T)
quantile(vektor, probs=c(0.2,0.4,0.6,0.8),na.rm=T)

### Interquartilsabstand IQR ----
quantile_round_up <- function(vektor, quantile){
  if(setequal((quantile*length(vektor)),round(quantile*length(vektor)))){
    (1/2)*((vektor[quantile*length(vektor)])+(vektor[(quantile*length(vektor))+1]))
  } else{
    vektor[ceiling(quantile*length(vektor))]
  }
}
IQR_Own <- function(vektor,func){
  func(vektor,0.75)-func(vektor,0.25)
}
IQR_Own(vektor,quantile_round_up)

# oder in R
MQA <- round(IQR(vektor,na.rm = FALSE,type = 7))/2
IQR(vektor,na.rm=T,type=7)

### Mittlerer Quartilsabstand ----
quantile_round_up <- function(vektor, quantile){
  if(setequal((quantile*length(vektor)),round(quantile*length(vektor)))){
    (1/2)*((vektor[quantile*length(vektor)])+(vektor[(quantile*length(vektor))+1]))
  } else{
    vektor[ceiling(quantile*length(vektor))]
  }
}
IQR_Mean_Own <- function(vektor,func){
  (func(vektor,0.75)-func(vektor,0.25))/2
}
IQR_Mean_Own(vektor,quantile_round_up)

# oder in R
################################## Streumasse ################
# Spannweite -----------------------------------------------
# na.rm=T entfernt fehlende Werte aus einer Liste
max(airquality$Temp, na.rn=T) -
  min(airquality$Temp, na.rm=T)

# Interquartilsabstand IQR ---------------------------------
# na.rm=T entfernt fehlende Werte aus einer Liste
IQR(airquality$Temp,na.rm=T,type=7)
round(IQR(airquality$Temp,na.rm=T,type=7))

# Standardabweichung ---------------------------------------
# Die Standardabweichung einer Stichprobe:
sd(airquality$Temp) # direkt die Standardabweichung berechnen
sqrt(var(airquality$Temp)) # über die Varianz die Spannweite berechnen

find_sd_sample <- function(x) { # Mittels einer Funktion 
  sqrt(sum((x-mean(x))^2/(length(x)-1)))
}

find_sd_sample(airquality$Temp)

# Die Standardabweichung der Grundgesamtheit:
find_sd_population <- function(x) { # Mittels einer Funktion 
  sqrt(sum((x-mean(x))^2/(length(x))))
}

find_sd_population(airquality$Temp)
# Varianz --------------------------------------------------
# na.rm=T entfernt fehlende Werte aus einer Liste
# Varianz einer Stichprobe:
var(airquality$Temp,na.rm=T)

find_var_sample <- function(x) { # Mittels einer Funktion 
  sum((x-mean(x))^2/(length(x)-1))
}

find_var_sample(airquality$Temp)

# Varianz einer Grundgesamtheit:
find_var_population <- function(x) { # Mittels einer Funktion 
  sum((x-mean(x))^2/(length(x)))
}

find_var_population(airquality$Temp)

# Schiefe --------------------------------------------------
# na.rm=T entfernt fehlende Werte aus einer Liste
library(moments)
skewness(airquality$Temp,na.rm=T)


# Woelbung -------------------------------------------------
# na.rm=T entfernt fehlende Werte aus einer Liste
library(moments)
kurtosis(airquality$Temp,na.rm=T)


# Variationsverhaeltnis -------------------------------------
# na.rm=T entfernt fehlende Werte aus einer Liste)
variation.ratio = function(x,na.rm=FALSE){
  if(na.rm){
    x = na.omit(x)
  }
  return(1 - sum(x==mode(x))/length(x))
}
variation.ratio(airquality$Wind)
# Variationskoeffizient -------------------------------------
sd(airquality$Temp) / mean(airquality$Temp)


################################## Formeln ################
# Schaetzung des Standardfehlers
schaetzungDesStandardfehlers = function(standardabweichung,n){
  return(standardabweichung/sqrt(n-1))
}

# Teststatistik
Teststatistik = function(mittelwertschaetzungxquer,mittelwert,schaetzungDesStandardfehlers){
  return((mittelwertschaetzungxquer-mittelwert)/schaetzungDesStandardfehlers)
}

################################## Normal-Verteilung ################
# Testen auf Normalverteilung ----
# Analytisch (nicht brauchbar bei kleinen Datenmengen)
# p-value muss grösser sein als das Signifikanzniveau
shapiro.test(airquality$Temp) # Hier p-value = 0.009319 also theoretisch 
                                                # keine Normalverteilung

# Grafisch
# Mittels QQnorm (besser bei kleineren Datenmengen)
qqnorm(airquality$Temp)

# Z-Standardisieren
airquality$zTemp <- scale(airquality$Temp)
qqnorm(airquality$zTemp)

# Gerade einzeichnen
qqline(airquality$zTemp)

# Mitels Histogramm
hist(airquality$zTemp)
hist(airquality$Temp)

# LEGENDE: ----
# dnorm gibt die Dichte.
# pnorm Gibt die Verteilungsfunktion. 
# qnorm gibt die Quantile.
# rnorm generiert eine zufälligen Datensatz mit Normalverteilung.

# dnorm Wahrscheinlichkeitsdichte f(x|mean, sd) ----
# Werte abfüllen
GesuchterWert_X <- 3
GesuchterWert_A <- 0
GesuchterWert_B <- 0
Mittelwert_mean <- 3
Standardabweichung_sd <- 1

# Wahrscheinlichkeit, dass genau x auftritt
# P(Xn = x)
dnorm(x = GesuchterWert_X, mean = Mittelwert_mean, sd = Standardabweichung_sd)

# Wahrscheinlichkeit, dass x nicht auftritt
# P(Xn != x)
1 - dnorm(x = GesuchterWert_X, mean = Mittelwert_mean, sd = Standardabweichung_sd)


# pnorm Verteilungsfunktion F(q|mean, sd) ----
# Werte abfüllen
GesuchterWert_Q       <- 128
GesuchterWert_A       <- 131
GesuchterWert_B       <- 128
Mittelwert_mean       <- 131
Standardabweichung_sd <- sqrt(5)

# Wahrscheinlichkeit, dass maximal ein bestimmter Wert q erreicht wird
# P(Xn <= q)
pnorm(q = GesuchterWert_Q ,mean = Mittelwert_mean, sd = Standardabweichung_sd)

# Wahrscheinlichkeit, dass mindestens ein bestimmter Wert q erreicht wird
# P(Xn >= q)
1-pnorm(q = GesuchterWert_Q ,mean = Mittelwert_mean, sd = Standardabweichung_sd)

# Wahrscheinlichkeit für alle Werte unter einem bestimmten Wert q
# P(Xn > q)
1-pnorm(q = GesuchterWert_Q ,mean = Mittelwert_mean, sd = Standardabweichung_sd)

# Wahrscheinlichkeit, dass ein Wert in einem bestimmten intervall liegt
# P(a < Xn <= b)
pnorm(q = GesuchterWert_B, mean = Mittelwert_mean, sd = Standardabweichung_sd) - 
  pnorm(q = GesuchterWert_A, mean = Mittelwert_mean, sd = Standardabweichung_sd)

# Wahrscheinlichkeit, dass ein Wert ausserhalb eines
# bestimmten intervalls liegt
1- (pnorm(q = GesuchterWert_B, mean = Mittelwert_mean, sd = Standardabweichung_sd) - 
      pnorm(q = GesuchterWert_A, mean = Mittelwert_mean, sd = Standardabweichung_sd))

# qnorm xx%-Quantile ----
Quantil <- 0.998
Mittelwert <- 10
Standardabweichung <- 0.1

# Beispiel: Unter welcher Länge liegen 99,8% der Stifte
# lower.tail = TRUE ist der Standard und wird bei der suche nach oberen grenzen verwendet
qnorm(p=Quantil, mean = Mittelwert, sd = Standardabweichung)


# Beispiel: Ueber welcher Länge liegen 99,8% der Stifte
# Mit lower.tail = FALSE wird eine untere Grenze abgefragt!!
qnorm(p=Quantil,mean=Mittelwert,sd=Standardabweichung, lower.tail = FALSE)

################################## Approximation der Binomialverteilung mit Normalverteilung ################
# Werte der Stichprobe
n           <- 10000             # Stichprobengroesse
p           <- 0.04             # Wahrscheinlichkeit
my          <- n*p             # Mittelwert
kleinSigma  <- sqrt(n*p*(1-p)) # Standardabweichung
x           <- 379               # gesuchter Wert
x
kleinSigma
# Pruefen ob Approximation funktioniert 
# (n genügend gross oder Stichprobe ausreichend Normalverteilt)
sqrt(n*p*(1-p)) # Muss groesser als 3 sein

# Wahrscheinlichkeit, dass genau x auftritt
# P(Xn = x)
dnorm(x = x, mean = my, sd = kleinSigma)

# Wahrscheinlichkeit, dass maximal ein bestimmter Wert erreicht wird
# P(Xn <= q)
pnorm(q = x+0.5 ,mean = my, sd = kleinSigma)

# Wahrscheinlichkeit, dass mindestens ein bestimmter Wert erreicht wird
# P(Xn >= q)
1-pnorm(q = x-1 ,mean = my, sd = kleinSigma)

################################## Binomial-Verteilung ################
# LEGENDE: ----
# dbinom gibt die Dichte.
# pbinom Gibt die Verteilungsfunktion. 
# qbinom gibt die Quantile.
# rbinom generiert eine zufälligen Datensatz mit Normalverteilung.

# dbinom Wahrscheinlichkeitsdichte f(x|p,n) ----
# Werte abfüllen
GesuchterWert_X      <- 10
GesuchterWert_A      <- 0
GesuchterWert_B      <- 0
Intervall            <- c(1:20)
AnzahlNachkommaSt.   <- 3
AnzahlElemente_N     <- 5000
Wahrscheinlichkeit_P <- 0.002

# Wahrscheinlichkeit, dass genau x auftritt
# P(Xb = x) ->  fb(x|p;n)
dbinom(x=GesuchterWert_X,size=AnzahlElemente_N,prob = Wahrscheinlichkeit_P)

# Wahrscheinlichkeit von allen Zufallsvariablen eines Intervalls ausgeben 
# und auf x Nachkommastellen runden
round(dbinom(x=Intervall,size=AnzahlElemente_N,prob = Wahrscheinlichkeit_P), AnzahlNachkommaSt.)

# pbinom Verteilungsfunktion F(q|p,n) ----
# Werte abfüllen
GesuchterWert_Q <- 10
GesuchterWert_A <- 1
GesuchterWert_B <- 8
AnzahlElemente_N <- 10
Wahrscheinlichkeit_P <- 0.5

# Wahrscheinlichkeit, dass maximal ein bestimmter Wert q erreicht wird
# P(Xb <= q) -> Fb(x|p;n)
pbinom(q = GesuchterWert_Q, size = AnzahlElemente_N, prob = Wahrscheinlichkeit_P)

# Wahrscheinlichkeit für alle Werte unter einem bestimmten Wert q
# Bsp. Alle verworfenen Elemente unterhalb einer Grenze
# P(Xn > q)
1-pbinom(q = GesuchterWert_Q, size = AnzahlElemente_N, prob = Wahrscheinlichkeit_P)

# Wahrscheinlichkeit, dass ein Wert in einem bestimmten intervall liegt
# P(a < Xb <= b)
pbinom(q = GesuchterWert_B, size = AnzahlElemente_N, prob = Wahrscheinlichkeit_P) - 
  pbinom(q = GesuchterWert_A, size = AnzahlElemente_N, prob = Wahrscheinlichkeit_P)

# Wahrscheinlichkeit, dass ein Wert ausserhalb eines
# bestimmten intervalls liegt
1- (pbinom(q = GesuchterWert_B, size = AnzahlElemente_N, prob = Wahrscheinlichkeit_P) - 
  pbinom(q = GesuchterWert_A, size = AnzahlElemente_N, prob = Wahrscheinlichkeit_P))


# qnorm xx%-Quantile ----
Quantil_P            <- 0.998
AnzahlElemente_N     <- 10
Wahrscheinlichkeit_P <- 0.5
Lower_Tail           <- TRUE  # TRUE = Standard (obere Grenze)

# Beispiel: Unter welcher Länge liegen 99,8% der Stifte
# lower.tail = TRUE ist der Standard und wird bei der suche nach oberen grenzen verwendet
qbinom(p=Quantil_P,size=AnzahlElemente_N, prob=Wahrscheinlichkeit_P, lower.tail = TRUE)


# Beispiel: Ueber welcher Länge liegen 99,8% der Stifte
# Mit lower.tail = FALSE wird eine untere Grenze abgefragt!!
qbinom(p=Quantil_P,size=AnzahlElemente_N, prob=Wahrscheinlichkeit_P, lower.tail = FALSE, log.p = FALSE)

# Diagramme ----
# Balkendiagramm aus Zufallszahlen (diskret)
xVect <- 0:10 # Vektor der Zahlen (0, 1, 2, ..., 10)
fVect <- dbinom(xVect, size=10, prob=0.2) # f(x) für x aus {0, 1, ..., 10}
barplot(
  fVect,
  names.arg=xVect, # Skalierung der x-Achse mit den Werten 0, 1, ..., 10
  xlab="x", # Beschriftung der Abszisse ("x-Achse")
  ylab="f(x)", # Beschriftung der Ordinate ("y-Achse")
  main="Titel" # kein Titel
)

# Treppendiagramm aus Zufallszahlen (diskret)
xVect <- 0:10 # Vektor der Zahlen (0, 1, 2, ..., 10)
FVect <- pbinom(xVect, size=10, prob=0.2) # F(x) für x aus {0, 1, ..., 10}
plot(
  xVect,
  FVect,
  type="s", # Treppendiagramm erstellen
  xlab="x",
  ylab="F(x)",
  main=""
)

# Liniendiagramm Wahrscheinlichkeitsfunktion aus Zufallszahlen (stetig)
xVect <- seq(from=142, to=188, by=0.1) 	# vector (142.0-188.0)
fVect <- dnorm(xVect, mean=165, sd=7) 	# f(x) for x f
plot(
  xVect,
  fVect,
  type="l", 	# line diagram
  xlab="x",
  ylab="f(x)",
  main=""
)

# Liniendiagramm Dichtefunktion aus Zufallszahlen (stetig)
xVect <- seq(from=142, to=188, by=0.1) 	# vector (142.0- 188.0)
FVect <- pnorm(xVect, mean=165, sd=7) 	# F(x) for x 
plot(
  xVect,
  FVect,
  type="l", 	# line diagram
  xlab="x",
  ylab="F(x)",
  main=""
)

zufallsdaten <- rbinom(n=16, size=20, prob = 0.8)
View(zufallsdaten)


qqnorm(airquality$Day, pch = 1, frame = FALSE)


################################## Poisson-Verteilung ################
# Variablen der Poissonverteilung
erwarteteAnzahlAnEreignissenX <- 0 
erwartungswert <- 5
eulerischeZahl <- exp(1)

# Formel für die Dichtefunktion
# in R:
dpois(erwarteteAnzahlAnEreignissenX, erwartungswert)

# Von Hand x > 0: # Bei x=0 kann direkt mit exp(1)^-erwartungswert gerechnet werden
(erwartungswert * erwarteteAnzahlAnEreignissenX * exp(1)^(-erwartungswert)) / gamma(erwarteteAnzahlAnEreignissenX + 1)
# x = 0
exp(1)^-erwartungswert

# Diagramme ausgeben
bereichVonXDefinieren <- 0:20 # Bereich der Ausgabe definieren. Ist abhängig von der Verteilung. Am besten einen Bereich um den Erwartungswert nehmen!!
titel <- "Titel"
xAchse <- 'Anzahl'
yAchse <- 'Wahrscheinlichkeit'

# Histogramm plotten
plot(x= bereichVonXDefinieren, y=dpois(bereichVonXDefinieren, erwartungswert), main = titel, xlab = xAchse,ylab = yAchse, type = "h", lwd=3)  # Histogramm Plotten

# Dichtefunktion des Diagramms ausgeben
round(dpois(bereichVonXDefinieren, erwartungswert), 5)

# Verteilungsfunktion des Diagramms ausgeben
round(ppois(bereichVonXDefinieren, erwartungswert), 5)

################################## Intervallschaetzungen ################
# Datensatz einlesen
load("Z:/FFHS/WS/R/R4Stat Uebungen/02_Datenmanagement/datenGewicht.RData")

# Konfidenzintervall von 95% ausrechnen
t.test(
  daten$groesse,
  conf.level=.95
)

# andere Testdaten erstellen
brillenDaten<-data.frame()
load("Z:/FFHS/WS/R/R4Stat Uebungen/06_Konfidenzintervalle/datenSehhilfe.RData")
brillenDaten<-daten
brillenDaten

# Neuer Eintrag "brilleInd" welche besagt, ob eine Person eine Brille traegt oder nicht
brillenDaten$brilleInd <- ifelse(
  brillenDaten$sehhilfe=="Brille",
  1, # falls BrillentraegerIn
  2 # falls nicht BrillentraegerIn
)
# neuer Eintrag als Faktor definieren und labels hinzufuegen
brillenDaten$brilleInd <- factor( # "brilleInd" als Faktor definieren
  brillenDaten$brilleInd,
  levels=1:2,
  labels=c("Brille", "keine Brille")
)
# 
table( # Mit einer Kontingenztabelle pruefen, ob "brilleInd" korrekt codiert ist
  brillenDaten$sehhilfe,
  brillenDaten$brilleInd
)

# Daten anschauen
brillenDaten

brilleTab <- table(daten$brilleInd) # Tabelle erzeugen (wird von R nicht angezeigt)
prop.test(
  brilleTab,
  conf.level=0.95
)
remove(brilleTab) # aufräumen

################################## Hypothesentests ################
# Datensatz laden
load("Z:/FFHS/WS/R/Datensaetze/datenGewicht.RData")
load('datensaetze/datenBlutdruck.RData')
datenGewicht <- daten
show(datenGewicht)
rm(daten)

load("Z:/FFHS/WS/R/Datensaetze/datenBlutdruck.RData")
load('datensaetze/datenBlutdruck.RData')
datenBlutdruck <- daten
show(datenBlutdruck)
rm(daten)

# Datensatz ergänzen:
# Zur Durchführung eines Anteilstests in R muss eine Variable als zweiwertiger Faktor definiert sein;
# zudem muss die uns interessierende Eigenschaft der erste der beiden Werte der Variable sein.
# Als Beispiel wollen wir aufgrund des Datensatzes "daten" mit 10 Beobachtungen und der Variable "haarfarbe" 
# mit den Werten "schwarz", "braun", "blond", "rot" in der angegebenen Reihenfolge auf dem Signifikanzniveau =0.05 testen, 
# ob es plausibel ist, dass der Anteil von Personen mit brauner Haarfarbe in der Gesamtheit 60% beträgt (Nullhypothese). 
# Dazu erzeugen wir mit Hilfe von "haarfarbe"zuerst eine neue Indikator-Variable "braunInd", welche angibt, ob jemand braune Haare hat:
datenGewicht$braunInd <- ifelse(
  datenGewicht$haarfarbe == "braun",
  1, # falls haarfarbe == "braun"
  2  # sonst
)

datenGewicht$braunInd <- factor( # "braunInd" als Faktor definieren
  datenGewicht$braunInd,
  labels = c("braun", "nicht braun")
)

table( # Kontrolle der Variable "braunInd": Kreuztabelle mit "haarfarbe"
  datenGewicht$braunInd,
  datenGewicht$haarfarbe
)

# Der Anteilstest kann aber nicht direkt auf der Variable "braunInd" durchgeführt werden.
# Stattdessen wird zuerst eine Tabelle erzeugt (und gespeichert), welche die absoluten Häufigkeiten der Werte von "braunInd" zählt. 
# Mit dieser Tabelle führen wir dann zuerst einen (exakten) Binomialtest durch:
braunTab <- table( # Tabelle erzeugen (wird von R nicht angezeigt)
  datenGewicht$braunInd
)

binom.test( # Binomialtest durchführen
  braunTab,
  p=0.6, #Anteil, auf welchen getestet werden soll
  alternative = "two.sided", # zweiseitiger Test
  conf.level = 0.95
)
rm(braunTab) # aufräumen

# Binomialtest einer Menge, welche nicht als Datensatz vorhanden ist:
# Bsp. Einen Datensatz von n=30 und einem Erwartungswert von 0.5. Dabei sind 25 Ja und 5 nein:
binom.test(25,30,0.5,alternative="two.sided",conf.level=0.95)

# Der Binomialtest liefert für kleine Stichproben exakte p-Werte, kann aber für grosse Stichproben sehr rechenintensiv und zeitaufwendig werden 
# (allerdings ist das mit den heutigen Rechnern üblicherweise kein grosses Problem mehr). 
# Für sehr grosse Stichproben ist deshalb der Anteilstest prop.test(), basierend auf einer Näherung durch eine Normalverteilung, sinnvoll:
braunTab <- table(
  datenGewicht$braunInd
)

prop.test(
  braunTab,
  p=0.6,
  alternative = "two.sided",
  conf.level = 0.95
)
rm(braunTab) # aufräumen

################################################################################ t-Tests
# Einstichproben-t-Test
# Wollen wir beispielsweise aufgrund der Variable "groesse" (Körpergrösse in cm) im Datensatz "daten" auf dem Signifikanzniveau =0.1 testen,
# ob in der Gesamtheit der Mittelwert der Körpergrösse grösser als 170 cm ist 
# (d.h. die Nullhypothese wäre "Mittelwert der Körpergrösse ist höchstens 170 cm"), geben wir das Folgende ein:
t.test(
  datenGewicht$groesse,
  alternative = "greater", # rechtseitiger Test
  mu=170, # postulierter Mittelwert mu_0 in der Gesamtheit
  conf.level = .9 # Konfidenzniveau 1-alpha für das Konf.intervall der Mittelwerts
)

# Ungepaarter Zweistichproben-t-Test
# Wollen wir beispielsweise aufgrund der Variablen "geschlecht" (Faktor; 1 = "männlich", 2 = "weiblich") 
# und "groesse" (Körpergrösse in cm) im Datensatz "daten" auf dem Signifikanzniveau =0.05 testen, 
# ob sich in der Gesamtheit die Mittelwerte der Körpergrösse zwischen den beiden Geschlechtern unterscheiden 
# (d.h. die Nullhypothese wäre, dass sich die Mittelwerte in der Gesamtheit nicht voneinander unterscheiden), geben wir Folgendes ein
t.test(
  groesse~geschlecht, # Formeleingabe, zu interpretieren als "groesse in Abhängigkeit von geschlecht"
  alternative = "two.sided", # zweiseitiger Test
  conf.level=.95, # Konfidenzniveau 1-alpha fpr das Konf.intervall der Differenz der Mittelwerte
  data=datenGewicht # Damit R weiss, wo es die Variablen suchen soll
)

# Gepaarter Zweistichproben-t-Test (Paardifferenzen-Test)
# Angenommen, wir wollen die Wirkung eines blutdrucksenkenden Medikamentes auf dem 
# Signifikanzniveau =0.01 testen und messen dazu den systolischen Blutdruck vor der 
# Medikamentenabgabe (Variable "blutdruckVor") und danach (Variable "blutdruckNach"). 
# Die Nullhypothese wäre, dass kein Effekt auftritt, dass also der Mittelwert der 
# Blutdruckdifferenz in allen je dieses Medikament verwendenden Personen gleich Null ist. 
# Dazu geben wir Folgendes ein:
t.test(
  datenBlutdruck$blutdruckVor,
  datenBlutdruck$blutdruckNach,
  alternative = "two.sided", # zweiseitiger Test
  conf.level = .99, # Kongidenzniveau 1-alpha für das Konf.intervall der mittleren Differenz
  paired = TRUE # gepaarter Test
)

################################################################################ Chiquadrat-Tests
# Chiquadrat-Anpassungstest
# Wollen wir beispielsweise aufgrund der (Faktor-)Variable "haarfarbe" mit den Werten 
# "schwarz", "braun", "blond" und "rot" im Datensatz "daten" testen, ob die Haarfarbe in der Bevölkerung der 
# diskreten Verteilung P("schwarz") = 0.15, P("braun") = 0.6, P("blond") = 0.2 und P("rot") = 0.05 folgt (Nullhypothese), 
# geben wir das Folgende ein:
haarTab <- table( # Tabelle von "haarfarbe" erzeugen (wird von R nicht angezeigt)
  datenGewicht$haarfarbe
)
chisq.test(
  haarTab,
  p=c(0.15,0.6,0.2,0.05) # vorgegebene Verteilung (gleiche Reihenfolge wie Werte von "haarfarbe")
)
rm(haarTab) # Aufräumen
show(datenGewicht)

# Chiquadrat-Unabhaengigkeitstest
# Angenommen, wir wollen anhand der beiden (Faktor-)Variablen "geschlecht" (1 = "männlich", 2 = "weiblich") 
# und "haarfarbe" (Werte "schwarz", "braun", "blond" und "rot") im Datensatz "daten" testen, 
# die Haarfarbe unter Männern und Frauen dieselbe Verteilung hat (Nullhypothese). 
# Dazu geben wir Folgendes ein:
geschlHaarTab <- table( # Kreuztabelle "haarfarbe" vs "geschlecht" erzeugen (wird von R nicht angezeigt)
  datenGewicht$geschlecht, # Zeilenvarriable
  datenGewicht$haarfarbe # Spaltenvariable
)
show(geschlHaarTab)
chisq.test( # Chiquadrat-Test durchfuehren
  geschlHaarTab
)
rm(geschlHaarTab) # aufräumen

round(1-dbinom(x=c(1:20),size=20,prob = 0.25),3)

# Balkendiagramm aus Zufallszahlen (diskret)
xVect <- 1:20 # Vektor der Zahlen (0, 1, 2, ..., 10)
fVect <- dbinom(x=c(1:20),size=20,prob = 0.25) # f(x) für x aus {0, 1, ..., 10}
barplot(
  fVect,
  names.arg=xVect, # Skalierung der x-Achse mit den Werten 0, 1, ..., 10
  xlab="x", # Beschriftung der Abszisse ("x-Achse")
  ylab="f(x)", # Beschriftung der Ordinate ("y-Achse")
  main="Binomial Wahrscheinlichkeitsfunktion: fb(1-20|0,25;20" # Titel
)

# Balkendiagramm aus Zufallszahlen (diskret)
xVect <- 0:20 # Vektor der Zahlen (0, 1, 2, ..., 20)
fVect <- pbinom(q=c(0:20),size=20, prob=0.25) # f(x) für x aus {0, 1, ..., 20}
barplot(
  fVect,
  names.arg=xVect, # Skalierung der x-Achse mit den Werten 0, 1, ..., 20
  xlab="x", # Beschriftung der Abszisse ("x-Achse")
  ylab="f(x)", # Beschriftung der Ordinate ("y-Achse")
  main="Binomial Verteilungsfunktion: x= 0-20; n= 20; p= 25%" # Titel
)

pbinom(q=c(0:20),size=20, prob=0.25)
dbinom(x=c(0:20),size=20,prob = 0.25)

# Balkendiagramm aus Zufallszahlen (diskret)
xVect <- 1:20 # Vektor der Zahlen (0, 1, 2, ..., 20)
Vect <- pbinom(q=c(0:20),size=100, prob=0.8) # f(x) für x aus {0, 1, ..., 20}
barplot(
  fVect,
  names.arg=xVect, # Skalierung der x-Achse mit den Werten 0, 1, ..., 20
  xlab="x", # Beschriftung der Abszisse ("x-Achse")
  ylab="f(x)", # Beschriftung der Ordinate ("y-Achse")
  main="Binomial Verteilungsfunktion: x= 1-20; n= 20; p= 25%" # Titel
)

round(pbinom(q=c(0:20),size=20, prob=0.25),3)
round(1-pbinom(q=c(0:20),size=20, prob=0.25),3)


################################## Tabelle erstellen ################
# Methode 1: Erstellen Sie eine Tabelle aus vorhandenen Daten.
# Machen Sie dieses Beispiel reproduzierbar
set.seed (1)

# Daten definieren
df <- data.frame(team=rep(c('A', 'B', 'C', 'D'), each=4),
                 pos=rep(c('G', 'F'), times=8),
                 points=round(runif(16, 4, 20),0))

# Kopf der Daten anzeigen 
head(df)

#     team pos points
#  1    A   G      8
#  2    A   F     10
#  3    A   G     13
#  4    A   F     19
#  5    B   G      7
#  6    B   F     18

# Erstellen Sie eine Tabelle mit 'Position' als Zeilen und 'Team' als Spalten
tab1 <- table(df$pos, df$team)
tab1

#    A B C D
#  F 2 2 2 2
#  G 2 2 2 2


# Methode 2: Erstellen Sie eine Tabelle von Grund auf neu
tab <- matrix(c(7, 5, 14, 19, 3, 2, 17, 6, 12), ncol=3, byrow=TRUE)
colnames(tab) <- c('colName1','colName2','colName3')
rownames(tab) <- c('rowName1','rowName2','rowName3')
tab <- as.table(tab)

# Matrix mit 4 Spalten erstellen
tab <- matrix(rep(2, times=8), ncol=4, byrow=TRUE)

# Spaltennamen und Zeilennamen der Matrix definieren
colnames(tab) <- c('A', 'B', 'C', 'D')
rownames(tab) <- c('F', 'G')

# Matrix in Tabelle konvertieren
tab <- as.table(tab)

# Tabelle anzeigen
tab

#    A B C D
#  F 2 2 2 2
#  G 2 2 2 2

# Methode 3: Einzeilige Tabelle erstellen
tab <- matrix(c(14,6), ncol=2, byrow=TRUE)
colnames(tab) <- c('Kopf','Zahl')
rownames(tab) <- c('Münze')
tab <- as.table(tab)
show(tab)
rm(tab)

# Methode 4: Einspaltige Tabelle erstellen
tab <- matrix(c(15,5), ncol=1, byrow=TRUE)
colnames(tab) <- c('Münze')
rownames(tab) <- c('kopf','Zahl')
tab <- as.table(tab)
show(tab)
rm(tab)

################################## Binomialtest ################
# 1. Beschreibung des zu pruefenden Sachverhalts,
# 2. Formulierung der Nullhypothese (H0) und Alternativhypothesen (H1)
# 3. Berechnung einer Teststatistik
# Formel fuer die Teststatistik:
Teststatistik = function(mittelwertschaetzungxquer,mittelwert,schaetzungDesStandardfehlers){
  return((mittelwertschaetzungxquer-mittelwert)/schaetzungDesStandardfehlers)
}

# 4. Auswahl der zugehoerigen Testverteilung.
# 5. Festlegung des Testniveaus in % (aus diesem folgen ueber die Testverteilung Ablehnungs- und Annahmebereich)
# 6. Fuellen eines statistischen und fachlichen Testurteils.

n_binom<-100
p_binom<-0.5
x_binom<-c(1:n_binom)
alpha_binom<-0.05

# Erwartungswert EXb = n*p:
n_binom * p_binom

# Anzeigen der Binomialverteilung in einem Balkendiagramm wenn H0 effektiv wahr waehre
xVect <- 1:n_binom # Vektor der Zahlen (0, 1, 2, ..., n)
fVect <- dbinom(x=x_binom,size=n_binom,prob = p_binom) # f(x) für x aus {0, 1, ..., n}
barplot(
  fVect,
  names.arg=xVect, # Skalierung der x-Achse mit den Werten 0, 1, ..., n
  xlab="x", # Beschriftung der Abszisse ("x-Achse")
  ylab="f(x)", # Beschriftung der Ordinate ("y-Achse")
  main="Binomial Wahrscheinlichkeitsfunktion: fb(x|p;n)" # Titel
)

# Verteilungsfunktion fb(x|p;n)
round(dbinom(x=x_binom,size=n_binom,prob = p_binom),4)

# H0(p>=0.x) & H1(p<0.x): Verteilungsfunktion Fb(x|p;n) um den Ablehnungsberereich bzw. Annahmebereich zu finden. Wenn Alpha erreicht dann ist der Kritische Wert erreicht
round(pbinom(q=x_binom,size=n_binom,prob = p_binom),4)

# H0(p<=p) & H1(p>0.x): Verteilungsfunktion Fb(x|p;n) um den Ablehnungsberereich bzw. Annahmebereich zu finden. Wenn Alpha erreicht dann ist der Kritische Wert erreicht
round(1-pbinom(q=x_binom,size=n_binom,prob = p_binom),4)

n<-10
p<-0.8
x<-c(1:10)
round(dbinom(x,n,p),4)

################################## Formeln Hypothesentest ################

#Formel fuer die Schaetzung des Standardfehlers:
schaetzungDesStandardfehlers = function(standardabweichung,n){
  return(standardabweichung/sqrt(n-1))
}

# Formel fuer die Teststatistik:
Teststatistik = function(mittelwertschaetzungxquer,mittelwert,schaetzungDesStandardfehlers){
  return((mittelwertschaetzungxquer-mittelwert)/schaetzungDesStandardfehlers)
}

# p-Wert ausrechnen:
1-pt(1.6758,df=152)


################################## Lineare Regression ################
# Lineare Regression
# Datensatz selber erstellen
x<-c(-3.4, 7.1, 3.8, 1.2)
y<-c(1.1, 10.5, 8.0, 8.0)
# Kovarianz berechnen
cov(x, y)

# Korrelationskoeffizient berechnen
cor(x,y)

# Beispiele für Mittelwert und Korrelationskoeffizient eines datensatzes individuell ausgeben
data(anscombe)
show(anscombe)
mean(anscombe$x1)
mean(anscombe$x2)
cor(anscombe$x1, anscombe$y1)
cor(anscombe$x2, anscombe$y2)


lm(formula = x~y)
lm(anscombe$x1~anscombe$y1)

load('/Users/achim/GitHub/RStudioProjects/FFHS_WS/datensatz3.RData')
summary(daten)
plot(daten$groesse,
     daten$gewicht,
     xlab = "Koerpergroesse [cm]",
     ylab = "Gewicht [kg]")

cor(daten$groesse,
    daten$gewicht)

cor.test(daten$groesse,
    daten$gewicht,
    conf.level = .95)

# Automatische Erstellung von Korrelations-Diagramm
# Datensatz erstellen
rm(daten) # alte daten löschen falls vorhanden

load('/Users/achim/GitHub/RStudioProjects/FFHS_WS/datensatz3.RData') #Import .RData File

daten <- read.csv("/Users/achim/GitHub/RStudioProjects/FFHS_WS/datensatz3.csv") # Import .CSV

daten <- read.csv("/Users/achim/GitHub/RStudioProjects/FFHS_WS/datensatz3.txt") # Import .txt

x<- c(15, 30, 60, 120, 180, 240)
y<- c(10 ,8, 5, 3, 1, 0.5)
daten<- data.frame(x,y)

show(daten)

# Variablen abfuellen:
abhaengigeVar <- daten$gewicht # Abhaengige Variable des Datensatzes
abhaengigString <- "gewicht" # Genaue Bezeichung der abhängigen Variable Bsp. Gewicht
unabhaengigeVar <- daten$groesse # Unabhaengige Variable
unabhaengigString <- "groesse" # Genaue Bezeichnung der unabhaengigen Variable Bsp. Koerpergroesse
korrelationskoeffizient <- cor(unabhaengigeVar, abhaengigeVar)

abhaengigVsunabhaengig <- lm( # Regressionsmodell speichern (lm = linear model)
  abhaengigeVar~unabhaengigeVar, # gewicht in Abhängigkeit von groesse darstellen
  data=daten
)
# (Intercept)       /   Estimate          = a
# unabhaengigeVar   /   unabhaengigeVar   = b
summary(abhaengigVsunabhaengig) # Resultate von Regressionsmodell abrufen
#Liegt der p-Wert ueber dem vorher bestimmten Signifikanzniveau (z.B. Signifikanzniveau=0.05)
#so koennte ein Korrelationskoeffizient von 0 in der Gesamtheit nicht ausgeschlossen werden, 
#so dass eine (einfache) Regressionsrechnung nicht sinnvoll waere.
cor.test(unabhaengigeVar, abhaengigeVar)

plot( # zuerst ein ganz normales Streudiagramm
  unabhaengigeVar,
  abhaengigeVar,
  main = paste("Korrelationskoeffizient: ", round(korrelationskoeffizient, 5)),
  xlab = unabhaengigString,
  ylab = abhaengigString
)
abline(abhaengigVsunabhaengig) # Regressionsgerade einzeichnen
lines( # Glaettungskurve einzeichnen
  lowess( # Glaettungskurve berechnen
    unabhaengigeVar,
    abhaengigeVar,
    f=0.5 # Anteil beruecksichtigter Punkte (f = fraction)
  ),
  lty="dashed" # gestrichelte Glaettungskurve (lty = line type)
)

# zuerst wird eine temporäre, nach "groesse" sortierte Datei erzeugt
tempDaten <- daten[order(daten$groesse), ]
show(tempDaten)
predictMatrix <- predict( # vorausgesagte Werte erzeugen
  abhaengigVsunabhaengig, # für die Voraussage benutztes Modell
  interval="confidence", # Konf.intervall für vorausgesagte Werte berechnen
  tempDaten # Voraussage von "groesse" aufgrund von "gewicht" in tempDaten
)
plot( # Streudiagramm erzeugen, mit nach "groesse" sortierten Daten
  tempDaten$groesse,
  tempDaten$gewicht,
  xlab="Körpergrösse [cm]",
  ylab="Gewicht [kg]"
)
 matlines()
matlines( # vorausgesagte Werte und Konf.intervall einzeichnen
  # (matlines = matrix lines)
  tempDaten$groesse, # unabhängige Variable ("x-Werte")
  predictMatrix, # abhängige Werte ("y-Werte")
    lty=c("solid", "dashed", "dashed"), # Linientypen
    col="black" # Linienfarben
  )

# Automatische Erstellung von Korrelations-Diagramm
# Datensatz erstellen
rm(daten) # alte daten löschen falls vorhanden

load('/Users/achim/GitHub/RStudioProjects/FFHS_WS/datensatz3.RData') #Import .RData File

daten <- read.csv("/Users/achim/GitHub/RStudioProjects/FFHS_WS/datensatz3.csv") # Import .CSV

daten <- read.csv("/Users/achim/GitHub/RStudioProjects/FFHS_WS/datensatz3.txt") # Import .txt

x<- c(15, 30, 60, 120, 180, 240)
y<- c(10 ,8, 5, 3, 1, 0.5)
daten<- data.frame(x,y)


show(daten)

# Variablen abfuellen:
abhaengigeVar <- daten$gewicht # Abhaengige Variable des Datensatzes
abhaengigString <- "Gewicht" # Genaue Bezeichung der abhaengigen Variable Bsp. Gewicht

unabhaengigeVar <- daten$groesse # Unabhaengige Variable
unabhaengigString <- "Groesse" # Genaue Bezeichnung der unabhaengigen Variable Bsp. Koerpergroesse

korrelationskoeffizient <- cor(unabhaengigeVar, abhaengigeVar)

# Funktion für ein Diagramm mit der Regressiongeraden und einer Glaetungskurve
korrelationsGeradeUndGlaettungskurve <- function(dat, abhaengigeVar, unabhaengigeVar, textAbhaengigerVar, textUnabhaengigerVar, korrelationskoeffizient){
  
  var1VsVar2 <- lm( # Regressionsmodell speichern (lm = linear model)
    abhaengigeVar~unabhaengigeVar, # gewicht in Abhaengigkeit von groesse darstellen
    data=dat
  )
  
  print("Dies ist das Summary:")
  print("Wichtige Werte sind...")
  print("Coefficients: Estimate/Intercept = a und Estimate/unabhaengigeVar = b der Funktion der Korrelationsgeraden (f(x)=a+b*x)")
  print(summary(var1VsVar2))
  print("Dies ist der Korrelationstest:")
  print("Wenn der p-value groesser ist als das Signifikanzniveau, dann kann ein Korrelationskoeffizient von 0 in der Gesamtheit nicht ausgeschlossen werden, so dass eine (einfache) Regressionsrechnung nicht sinnvoll waere")
  print("cor = Korrelationskoeffizient")
  print(cor.test(unabhaengigeVar, abhaengigeVar))
  
  plot( # zuerst ein ganz normales Streudiagramm
    unabhaengigeVar,
    abhaengigeVar,
    main=paste("Korrelationskoeffizient: ", round(korrelationskoeffizient, 5)),
    xlab=textUnabhaengigerVar,
    ylab=textAbhaengigerVar
  )
  
  abline(var1VsVar2)
  
  lines( # Glaettungskurve einzeichnen
    lowess( # Glaettungskurve berechnen
      unabhaengigeVar,
      abhaengigeVar,
      f=0.5 # Anteil beruecksichtigter Punkte (f = fraction)
    ),
    lty="dashed" # gestrichelte Glaettungskurve (lty = line type)
  )
}

# Funktion ausführen:
korrelationsGeradeUndGlaettungskurve(daten, abhaengigeVar, unabhaengigeVar, abhaengigString, unabhaengigString, korrelationskoeffizient)
