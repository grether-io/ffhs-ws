### Kurztest 4 - PVA 5 ###
###    Achim Grether   ###
### ------------------ ### 

## Aufgabe 1.1

attach(faithful)

model <- lm(waiting~eruptions)

model
print(model)

plot(model)

plot(eruptions, waiting)
abline(model, col='blue')


attach(mtcars)

model2 <- lm(mpg~drat)
print(model2)


plot(drat, mpg)
abline(model2)

summary(model)
cor(eruptions, waiting)
cor(waiting, eruptions)

summary(model2)
cor(drat, mpg)


x <- rnorm(20)
y <- rnorm(20)
plot(x,y)
model <- lm(y~x)
abline(model)
print(model)
summary(model)
