#Schätzungen

## Punktschätzung
# Es gibt hierzu keine konkreten Funktionen, am einfachsten wird eine
# Stichprobe mittels sample() gezogen und danach mean / var berechnet

data <- c(28.4,24.2,29.1,25.4,27.6)
sum(data)/(length(data)+1)
smpl <- sample(x=data, size=3)
mean(smpl)
var(smpl) 
summary(smpl)
sd(smpl) #s^*

## Intervallschätzung
# Intervallschätzungen werden in R mit Hypothesen gemacht
t.test(
  testdf$rand,
  conf.level = 0.95
)

# oder im Falle einer Anteilsberechnung (f??r Binomialverteilung)
# zuerst kurz testdf m=0 und w=1 machen
testdf$sexId <- ifelse(
  testdf$sex == "m",
  0,
  1
)

# definieren als Faktor
testdf$sexId <- factor(
  testdf$sexId,
  levels = 0:1,
  labels = c("m","w")
)

#bilden einer Matrix für die Werte
testdfTbl <- table(
  testdf$sex,
  testdf$sexId
)

#Start eines Hypothesentests
prop.test(
  testdfTbl,
  conf.level = 0.95
)

# Annäherung Binomial an Normalverteilung
pi <- 0.04
n <- 10000
mean_binom <- pi * n
sd_binom <- mean_binom * (1-pi)
# limit = 4.7% -> (10'000 * 4.7) - 0.5
# prob das vom limit mindestens mean systeme in der sd liegen
pnorm(470.5,mean,sd_binom)
