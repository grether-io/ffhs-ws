#Modulprüfung-WS-FS22 - Achim Grether

############################################################
#Aufgabe 1
############################################################
#Aufgabe 1a) 
konservativ <- (372/910) * 100

#Aufgabe 1b)
befürworter <- (278/910) * 100

#Aufgabe 1c)
konsBefür <- (57 / 372) * 100
libBefür <- (101 / 175) * 100
modBefür <- (120 / 363) * 100

############################################################
#Aufgabe 2
############################################################
#Aufgabe 2a.)

file.choose() #Pfad-Bezeichnung abholen ("C:\\Users\\Achim\\Downloads\\iris.csv")

data <- read.csv("C:\\Users\\Achim\\Downloads\\iris.csv", na="NA") #Daten einlesen und in data speichern

# 150 Observationen (gemäss Auflistung rechts)
# 5 Variablen (gemäss Auflistung rechts)
head(data) # Zeigt zudem auch die Variablen
summary(data) # zeigt als alternative auch die länge der "Serie/Daten" (Length:150)


#Aufgabe 2b.)
# Airthmetisches Mittel
aritm <- mean(data$sepal_length)
# Resultat: 5.843

# Median
medi <- median(data$sepal_length)
# Resultat: 5.8

# 75%-Quantil
quant <- quantile(data$sepal_length, probs = c(0.75))
# Resultat: 6.4

#Aufgabe 2c.)
versicolor <- data[(data$species=="versicolor")]
setosa <- data[(data$species=="setosa")]
virginica <- data[(data$species=="virginica")]
boxplot(versicolor, setosa, virginica)


############################################################
#Aufgabe 3
############################################################
#Aufgabe 3a.)
#P (Xn >= q)
mini190Ohm <- (1 - pnorm(190, 200, 10)) * 100

#Aufgabe 3b.)
# Über welcher länge liegen 2% der Bauteile
max2Ohm <- qnorm(0.02, 200, 10, lower.tail = FALSE)

############################################################
#Aufgabe 5
############################################################
#Aufgabe 5a.)
file.choose() #Pfad laden -> "C:\\Users\\Achim\\Downloads\\Plants.xlsx"
plants <- read_excel("C:\\Users\\Achim\\Downloads\\Plants.xlsx", na="NA")

# Island - kategorial, nominal
# Area - quantitativ, kontinuierlich
# Elevation - quantitativ, kontinuierlich
# Soil - quantitativ, diskret -> könnte auch als typen gemeint sein und nicht die Anzahl dann wäre es kategorial und id-variable 
# Latitude - quantitativ, kontinuierlich
# Distance - quantitativ, kontinuierlich
# Species - quantitativ, diskret


#Aufgabe 5b.)
# Annahme aus deR Aufgabenstellung die "number" als Anzahl species gedeutet.
plot(
  plants$Area,
  plants$Species
)

#Aufgabe 5c.)
lreg <- lm(plants$Area~plants$Species)
resLReg <- summary(lreg)
resLReg

#Aufgabe 5d.)
residuals(lreg)
plot(lreg)

#Aufgabe 5e.)
# Die Residuuen sind mit Ausrreissern  vorallem im Bereich von 400 - 600 Verteilt.
# Der R^2 Wert ist mit 0.2661 sehr klein, dies Detuet auf eine hohe Residualstreuung und einen schlechten Fit hin.


#Aufgabe 7.)
2607 - 95 - 564 - 905 -670
