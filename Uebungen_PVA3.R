#Wie lautet das 95%-Konfidenzintervall für den durchschnittlichen Verbrauch an Studentenfutter,
# wenn der Verbrauch in der Grundgesamtheit als normalverteilt angenommen werden kann?
# n < 30 somit gilt, Student T-Verteilung
sd <- sd(data)
n <- 5
xbar <- 10
alpha95 <- 1 - (95 / 100)
t95 <- 1 - (alpha95 / 2)
Z <- 2.776 #aus der Tabelle der Student T-Verteilung = 2.776)
  
margin <- Z * sd / sqrt(n)
oben <- xbar + margin
unten <- xbar - margin

#Es soll der Mittelwert 𝜇 = Ε(𝑋) des normalverteilten Kopfumfangs 𝑋(𝑖𝑛 𝑐𝑚) bei Mädchengeburten geschätzt werden.
#Dazu werden in einer Frauenklinik 𝑛 Kopfumfänge gemessen; es kann davon ausgegangen werden, dass es sich dabei um eine unabhängige Stichprobe von 𝑋 handelt.
#Bestimmen Sie für folgende Situationen ein Konfidenzintervall für 𝜇 zum Konfidenzniveau 0.99:
# a) 𝑛 = 100; 𝜎􏰃 = 16; 𝑥̅ = 42
# b) 𝑛 = 30; 𝑥̅ = 42; 𝑠􏰃 = 14
# c) Wie groß müsste der Stichprobenumfang in Teilaufgabe (𝑎) gewählt werden, um eine Genauigkeit von 0.999 zu erreichen (𝓏􏰅. 9995 = 3.29)?

n <- 100
var <- 16
sig <- sqrt(16)
xq <- 42

qnorm(1 - 0.005) 

#T-Verteilung
n <- 25
x_quer <- 100
sd <- 22
margin <- qt(1 - 0.05/2, df=n-1) * sd / sqrt(n)

#Normverteilung
margin <- qt(1 - 0.05/2) * sd / sqrt(n)



       