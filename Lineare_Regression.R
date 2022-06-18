#Lineare Regression
plot(daten$IQ, daten$Abischni)
model <- lm(Abischni~IQ, data = daten)
abline(model, col="red")
summary(model)

# übersicht der daten
summary(data)

# streudiagramm erstellen
# zuerst x dann y achse
plot(
  daten$groesse,
  daten$gewicht,
  xlab="Körpergrösse",
  ylab="Gewicht"
)

#korrelationskoeffizient nach Pearson bestimmen
cor(
  daten$groesse,
  daten$gewicht
)

# korrelationskoeffizient mit t-verteilter testgrösse
cor.test(
  daten$groesse,
  daten$gewicht
)

# lineare regression durchführen
gewichtVsGroesse <- lm( # Regressionsmodell speichern (lm = linear model)
  gewicht~groesse, # gewicht in Abhängigkeit von groesse darstellen
  data=daten
)
summary(gewichtVsGroesse) # Resultate von Regressionsmodell abrufen

# plot mit regression und einzeichnen der glättungskurve
plot( # zuerst ein ganz normales Streudiagramm
  daten$groesse,
  daten$gewicht,
  xlab="Körpergrösse [cm]",
  ylab="Gewicht [kg]"
)
abline(gewichtVsGroesse) # Regressionsgerade einzeichnen
lines( # Glättungskurve einzeichnen
  lowess( # Glättungskurve berechnen
    daten$groesse,
    daten$gewicht,
    f=0.5 # Anteil berücksichtigter Punkte (f = fraction)
  ),
  lty="dashed" # gestrichelte Glättungskurve (lty = line type)
)

# zuerst wird eine temporäre, nach "groesse" sortierte Datei erzeugt
tempDaten <- regressionsdaten[order(regressionsdaten$groesse), ]
predictMatrix <- predict( # vorausgesagte Werte erzeugen
  gewichtVsGroesse, # für die Voraussage benutztes Modell
  interval="confidence", # Konf.intervall für vorausgesagte Werte berechnen
  tempDaten # Voraussage von "groesse" aufgrund von "gewicht" in tempDaten
)

plot( # Streudiagramm erzeugen, mit nach "groesse" sortierten Daten
  tempDaten$groesse,
  tempDaten$gewicht,
  xlab="Körpergrösse [cm]",
  ylab="Gewicht [kg]"
)

matlines( # vorausgesagte Werte und Konf.intervall einzeichnen
  # (matlines = matrix lines)
  tempDaten$groesse, # unabhängige Variable ("x-Werte")
  predictMatrix, # abhängige Werte ("y-Werte")
  lty=c("solid", "dashed", "dashed"), # Linientypen
  col="black" # Linienfarben
)

origParam <- par( # alte Parameter sichern, neue setzen
  mar=c(6,4.5,2,1), # Rand um die Grafik
  las=1, # Orientierung der Skalenbeschriftung
  cex.axis=1.25, # Skalierungsfaktor für Skalenbeschriftung
  cex.lab=1.5 # Skalierungsfaktor für Achsenbeschriftung
)

plot(gewichtVsGroesse, which=1) # Diagnostikplot 1
readline(prompt="Weiter mit <Enter>") # Pausieren eines Skripts
plot(gewichtVsGroesse, which=2) # Diagnostikplot 2
par(origParam) # alte Parameter wiederherstellen