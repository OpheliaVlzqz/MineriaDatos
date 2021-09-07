#Estadística Bayesiana

# Basada en el teorema de bayes
# no MCO
# tiene en cuenta los datos y las creencias de base

# simulaciones de MC se basan en ella
install.packages("zoo")
install.packages("xts")
install.packages("quantmod")
install.packages("TTR")
library(quantmod)
library(zoo)
library(xts)
library(TTR)
data("iris")

library(tseries)


#Regresion Bayesiana

#Ejemplo 1:

install.packages("MCMCpack")
library(MCMCpack)

tabla <- data.frame(iris$Sepal.Length,iris$Sepal.Width) 
bayes <- MCMCregress(tabla$iris.Sepal.Width~tabla$iris.Sepal.Length,data = tabla)

summary(bayes)

plot(bayes)



bayes_clasica <- lm(tabla$iris.Sepal.Width~tabla$iris.Sepal.Length,data = tabla)
summary(bayes_clasica)



getSymbols()

getSymbols("AUDNZD=X",src="yahoo",from = "2017-02-18")
getSymbols("AUDUSD=X",src="yahoo",from = "2017-02-18")

AUDNZD= `AUDNZD=X`[,4]
AUDUSD= `AUDUSD=X`[,4]

X=as.numeric(AUDNZD)
Y=as.numeric(AUDUSD)



bayes <- MCMCregress(Y~X)
summary(bayes)
plot(bayes)


bayes_clasica <- lm(Y~X)
summary(bayes_clasica)

#### regresion linea simple bayesiana