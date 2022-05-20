### Kurztest 1 - PVA 2 ###
###    Achim Grether   ###
### ------------------ ### 

#Aufgabe 1.1
#Speichere mtcars in der Variable data
data <- mtcars
#Gib die erste Zeile aus
head(data,1)

#Aufgabe 1.2
#Quantile für MPG
quantile(data$mpg)
#Quantile für HP
quantile(data$hp)

#Aufgabe 1.3
#22% = 0.22
quantile(data$mpg, probs = 0.22)
#57% = 0.57
quantile(data$mpg, probs = 0.57)
#81% = 0.81
quantile(data$mpg, probs = 0.81)

#Aufgabe 1.4
boxplot(mpg~gear,data=mtcars, main="Boxplot - Gears to MPG", xlab="Number Of Gears", ylab="Miles Per Gallon")

#Aufgabe 1.5
data1 <- rnorm(10, 2, 31)
hist(data1, main="10 Datensaetze, med=2, sd=31", xlab="Random-Number", ylab="Frequency")
data2 <- rnorm(150, 2, 31)
hist(data2, main="150 Datensaetze, med=2, sd=31", xlab="Random-Number", ylab="Frequency")
data3 <- rnorm(1500, 2, 31)
hist(data3, main="1500 Datensaetze, med=2, sd=31", xlab="Random-Number", ylab="Frequency")
