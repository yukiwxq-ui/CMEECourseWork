rm(list=ls())

# Variance demonstration
y1 <- rnorm(10, mean=0, sd=sqrt(1))
y2 <- rnorm(10, mean=0, sd=sqrt(10))
y3 <- rnorm(10, mean=0, sd=sqrt(100))
var(y1); var(y2); var(y3)

# Covariance and correlation
x <- c(-10:10)
y1 <- x*1 + rnorm(21, mean=0, sd=sqrt(1))
y2 <- rnorm(21, mean=0, sd=sqrt(1))
y3 <- x*(-1) + rnorm(21, mean=0, sd=sqrt(1))

cov(x, y1); cor(x, y1)
cov(x, y2); cor(x, y2)
cov(x, y3); cor(x, y3)

# Variance rules demonstration
y <- c(-3,5,8,-2)
var(y)
var(y+4)  # Adding constant doesn't change variance
var(y*4)  # Multiplying changes variance by square

# Exercise 2: The visualization shows how covariance represents the joint variation between variables, but doesn't show the strength of relationship relative to the variables' scales.

# Exercise 3:

# Scatterplot matrix
d <- read.table("../data/SparrowSize.txt", header=TRUE)

# Basic scatterplot matrix
pairs(d[,c("Tarsus", "Bill", "Wing", "Mass")])# Or use GGally package for enhanced version
