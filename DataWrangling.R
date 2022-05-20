# deklarieren einer Variable
var <- 5
typeof(var)

# mathematische Operationen
var^2
sqrt(var^2)
abs(-var)
log(100) # Default mit Basis e
log10(100)

# help Anzeigen
help(c)

#### Datentypen ####
## Standardtypen
char <- "this is char"
logical <- TRUE
logical2 <- 1==5

## Vektoren
# definieren Vektor von 1-10 in 0.5 steps
v <- c(seq(1, 10, 0.5)) 

# handling
rep(v, 3)
rep(v, each=3)
rbind(v, c(1:20)) # rowbind

## Matrizen
# eine Matrize kann immer nur einen Datentyp haben!
# wird ein char eingelesen, wird alles zu Char transformiert
matrix(c(1:6), nrow=3, ncol=2)
matrix(c(1:6), nrow=3, ncol=2, byrow=T)

## Dataframes
id <- c(1:20)
sex <- rep(c("m", "w"), 10)
rand <- round(runif(20,10,30),2)
df <- data.frame(id, sex, rand)

# handling
head(df) # erste Datenwerte
str(df) # ??berblick
df$id # nur id
df$age <- round(runif(20, 18, 50)) # erg??nzen neuer Wert
df$age

#Eine einfache Identifikationsvariable "id" mit 
#fortlaufender Nummerierung der Beobachtungen erzeugen.
daten$id <- seq_len(nrow(daten))

#Erzeugt eine fortlaufende Sequenz von Zahlen.
seq_len()

#Zählt die Anzahl Zeilen im entsprechenden Datensatz.
nrow(x)

#Umbenennen der Spaltennamen
olnames(Daten)[2] <- „neueBezeichnung“
#oder 
colnames(daten)[colnames(daten) == „alteBezeichnung“]  <- „neueBezeichnung“      

#Ausgabe in File
write.table(df, "data.csv", sep=",", na="")

#Daten einlesen
testdf <- read.csv("data.csv", sep=",")
summary(testdf)

#Bereinigung
testdf <- testdf[,c(2:4)] # entfernen einer Spalte
testdf$age[5] <- 23 # einzelnen Wert ??berschreiben
testdf[,1]=="w" | testdf[,1]=="m"  # Pr??fen ob es abweichende Werte gibt
which((testdf[,1]=="w" | testdf[,1]=="m")==FALSE)
which(is.na(testdf), arr.ind=T) # gibt es ein na irgendwo
