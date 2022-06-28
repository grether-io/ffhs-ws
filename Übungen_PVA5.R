# Vektoren mit Daten erstellen
dataX = c(1,5,6,7,8)
dataY = c(2,4,7,9,11)

# Kovarianz
cov(dataX, dataY)

# Plot mit zufälligen Normdaten
x=rnorm(20)
y=rnorm(20)
plot(x,y)

# Kovarianz Berechnen
cov(x,y)

# 
cor(dataX, dataY)
plot(dataX, dataY)

# Korrelation Berechnen mit der Kovarianz und dem Produkt der Standardabweichung
cov(dataX, dataY)/(sd(dataX)*sd(dataY))

### Gutes Beispiel
x = c(1,2,4,5,6,7,8,9,10,12,13)
y = c(2,3,5,6,7,8,10,11,13,14,16)
length(x)
length(y)
plot(x, y)
cor(x,y)

model_mat1 <- lm(y~x)
model_mat1 (ax + b)
#(intercept) = b
#x = steigung (ax) der funktion

#Bestimmtheitsmass Multiple R-squared
summary(model_mat1)

# Residuuen ausgeben
residuals(model_mat1)

plot(model_mat1)

### Schlechtes Beispiel

x = rnorm(30)
y = rnorm(30)
plot(x,y)
model_mat2 <- lm(y~x)
model_mat2
summary(model_mat2)

#lineare regression
attach(cars)
head(cars)
speed
plot(speed, dist)
cor(speed, dist)
#y-Achse zuerst (die abhängige variable)
model_mat3 <- lm(dist~speed, data=cars)
#Bestimmtheitsmass = Multiple R-squared
summary(model_mat3)
abline(model_mat3, col='red')

plot(model_mat3)
