#------------------------------------------------------------------------------------------
#Boxplot
# Boxplot of MPG by Car Cylinders 
boxplot(mpg~cyl,data=mtcars, main="Car Milage Data", xlab="Number of Cylinders", ylab="Miles Per Gallon")

#Der einfache Boxplot
boxplot(IQ)

#Der gruppierte Boxplot
boxplot(IQ~Geschlecht)

#Barplot
barplot(testdf$rand,xlab="ID", ylab="Messwert")

#Histogram
hist(testdf$age, breaks=c(seq(10,50,5)))

## Bivariate Diagramme
# Damit Variablen einander gegenübergestellt werden können
barplot(
  table(
    testdf$age,
    testdf$sex
  ),
  beside=TRUE,
  xlab = "Geschlecht",
  ylab = "Anzahl pro Altergruppe"
)

boxplot(
  testdf$age ~ testdf$sex,
  xlab="Geschlecht",
  ylab="Alter"
)

plot(
  testdf$age,
  testdf$rand,
  pch=testdf$sex # Verteilung auf m und w
)

# Die Schreibweise "y ~ x" mit der Tilde "~" kommt 
# auch z.B. bei der linearen Regression vor und bedeutet, 
# dass "y" in Abh??ngigkeit von "x" dargestellt (oder modelliert) wird.

## Diagnostische Diagramme
qqnorm(
  testdf$age,
  
)
qqline(
  testdf$age
)

#------------------------------------------------------------------------------------------
#Quantiles
quantile(x, probs = seq(0, 1, 0.25), na.rm = FALSE, names = TRUE, type = 7, …)
#Arguments
#x: numeric vector whose sample quantiles are wanted, or an object of a class for which a method has been defined (see also ‘details’). 
#NA and NaN values are not allowed in numeric vectors unless na.rm is TRUE.

#probs: numeric vector of probabilities with values in \([0,1]\). (Values up to 2e-14 outside that range are accepted and moved to the nearby endpoint.)

#na.rm: logical; if true, any NA and NaN's are removed from x before the quantiles are computed.

#names: logical; if true, the result has a names attribute. Set to FALSE for speedup with many probs.

#type: an integer between 1 and 9 selecting one of the nine quantile algorithms detailed below to be used.

#------------------------------------------------------------------------------------------
qqnorm(
  daten$groesse,
  main = "",
  xlab = "Quantile der Std.norm.vert.",
  ylab = "Quantile der Körpergrösse",
  pch = 20 # kleine Kreisscheibe statt grosser Kreis
)
# Der folgende Befehl qqline() fügt dem vorangegangenen
# Diagramm eine Gerade durch das 1. und das 3. Quartil
# der Std.normalverteilung und von "groesse" hinzu
qqline(
  daten$groesse
)