rm(list=ls())

# Linear function basics
x <- seq(from=-5, to=5, by=1)
a <- 2
b <- 1
y <- a + b*x
plot(x, y, col="white")
segments(0,-10,0,10, lty=3)
segments(-10,0,10,0,lty=3)
abline(a=2, b=1)

# Quadratic function
x <- seq(from=-5, to=5, by=0.1)
a <- -2
y <- a + x^2
plot(x, y)
segments(0,-30,0,30, lty=3)
segments(-30,0,30,0,lty=3)

# Complex function
a <- -2
b1 <- 10
b2 <- 3
y <- a + b1*x + b2*x^2
plot(x, y)
points(x, y, pch=19, col="green")


# Exercise 1: The dragon gains 12 kg per sheep eaten (slope = 12)
# Exercise 2: After 10 days: y = 0 + 8×10 = 80 species
# Exercise 3:
#   Prime year: find maximum of y = -1 + 2x - 0.15x²
# Derivative: 2 - 0.3x = 0 → x = 6.67 years
# Offspring at prime: y = -1 + 2(6.67) - 0.15(6.67)² ≈ 5.67 offspring
# Exercise 4: The relationship shows an initial increase in species richness with reserve area, reaching a maximum then declining (hump-shaped curve due to negative quadratic term).