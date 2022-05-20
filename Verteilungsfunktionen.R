#------------------------------------------------------------------------------------------
#Binomial-Verteilung
# n: Gesamtanzahl der Versuche
# x: Anzahl der Treffer
# p: Wahrscheinlichkeit eines Treffers

#This function gives the probability density distribution at each point.
dbinom(x, size, prob) 
#This function gives the cumulative probability of an event. It is a single value representing the probability.
pbinom(x, size, prob) 
#This function takes the probability value and gives a number whose cumulative value matches the probability value.
qbinom(x, size, prob) 
#This function generates required number of random values of given probability from a given sample.
rbinom(x, size, prob) 

#------------------------------------------------------------------------------------------
#Poisson-Verteilung
# P(x): Wahrscheinlichkeit, das x Eregnisse innerhalb des Zeitraums eintreten
# X: Anzahl der Ereignisse in einem bestimmten Zeitraum
# Lambda: Erwartungswert, Durchschnittswert
ppois(x,lambda)

#------------------------------------------------------------------------------------------
#Normalverteilung
# wenn mean = 0 & sd = 1, wird die Standardnormalverteilung berechnet
# mean = Erwartungswert
# sd = standardabweichung

#This function gives height of the probability distribution at each point for a given mean and standard deviation.
dnorm(x, mean, sd)

#This function gives the probability of a normally distributed random number to be less that the value of a given number.
#It is also called "Cumulative Distribution Function".
pnorm(x, mean, sd) 

#This function takes the probability value and gives a number whose cumulative value matches the probability value.
qnorm(x, mean, sd) 

#This function is used to generate random numbers whose distribution is normal.
#It takes the sample size as input and generates that many random numbers. 
#We draw a histogram to show the distribution of the generated numbers.
rnorm(x, mean, sd) 

#------------------------------------------------------------------------------------------
#### Verteilungen ####
# hyper = hypergeometrische Verteilung
# pois = Poissonverteilung
# unif = stetige Gleichverteilung (engl. uniform distribution)
# norm = Normalverteilung
# exp = Exponentialverteilung
# t = t-Verteilung
# chisq = Chiquadrat-Verteilung (engl. chisquare distribution)
# f = F-Verteilung
# binom = Binomialverteilung
# geom = geometrische Verteilung

# Bsp. mit Wahrscheinlichkeitsverteilung
# 20 von 20 korrekt, bei Wahrscheinlichkeit von 0.95 pro Versuch
dbinom(20, size=20, prob=0.95)+dbinom(19, size=20, prob=0.95)

# Was ist die Wahrscheinlichkeit, dass etwas eine prob von x hat
# Bsp.: wie gross ist p, dass beim abf??llen von einem Gef??ss vom Sollwert 0.330l
# um 0.005l abweicht
# P(X>0.335) 
1-pnorm(0.335,0.330,0.01) # bei gegebener sd

dbinom(0, size=10, prob=0.5)
# mit pbinom hingegen sucht man z.b. x<=10

## Diagramme
barplot(
  dnorm(c(0:10)),
  names.arg=c(0:10)
)

plot(
  c(0:10),
  pbinom(c(0:10), size=10, prob=0.3),
  type="s" # Treppendiagramm
)

# Verteilungsfunktion dargestellt als Liniendiagramm
xVect <- seq(from=142, to=188, by=0.1) # Vektor (142.0, 142.1, ..., 188.0)
FVect <- pnorm(xVect, mean=165, sd=7) # F(x) f??r x aus {142.0, 142.1, ..., 188.0}
plot(
  xVect,
  FVect,
  type="l", # Liniendiagramm erstellen
  xlab="x",
  ylab="F(x)",
  main=""
)

dbinom(2,2,0.5)