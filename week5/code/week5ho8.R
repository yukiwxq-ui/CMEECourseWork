rm(list=ls())

# Simple linear model
x <- c(1,2,3,4,8)
y <- c(4,3,5,7,9)
model1 <- lm(y ~ x)
summary(model1)
coefficients(model1)
resid(model1)

# Plot with regression line
plot(y ~ x, pch=19, xlim=c(0,8.5), ylim=c(0,9.5))
segments(0,-30,0,30, lty=3)
segments(-30,0,30,0,lty=3)
abline(coefficients(model1))

# Simulated data with noise
x <- seq(from=-10, to=10, by=0.2)
y <- 7.1 - 0.2 * x + runif(length(x))
summary(lm(y ~ x))
