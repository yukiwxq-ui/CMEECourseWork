# Clear workspace and set directory
rm(list=ls())
getwd()

# Load data
d <- read.table("../data/SparrowSize.txt", header=TRUE)
str(d)
names(d)
head(d)

# Basic data exploration
length(d$Tarsus)

# Histograms
hist(d$Tarsus)
par(mfrow = c(2, 2))
hist(d$Tarsus, breaks = 3, col="grey")
hist(d$Tarsus, breaks = 10, col="grey")
hist(d$Tarsus, breaks = 30, col="grey")
hist(d$Tarsus, breaks = 100, col="grey")

# Central tendency measures
mean(d$Tarsus, na.rm = TRUE)
median(d$Tarsus, na.rm = TRUE)
mode(d$Tarsus)  # Note: this doesn't give statistical mode

# Finding the actual mode
d$Tarsus.rounded <- round(d$Tarsus, digits = 1)
library(dplyr)
TarsusTally <- d %>% count(Tarsus.rounded, sort = TRUE)
TarsusTally

# Remove NAs and recalculate
d2 <- subset(d, d$Tarsus != "NA")
TarsusTally <- d2 %>% count(Tarsus.rounded, sort = TRUE)
TarsusTally[[1]][1]  # This gives the mode

# Range, variance and standard deviation
range(d$Tarsus, na.rm = TRUE)
var(d$Tarsus, na.rm = TRUE)
sd(d$Tarsus, na.rm = TRUE)

# Manual calculation of variance
sum((d2$Tarsus - mean(d2$Tarsus))^2)/(length(d2$Tarsus) - 1)

# Z-scores
zTarsus <- (d2$Tarsus - mean(d2$Tarsus))/sd(d2$Tarsus)
var(zTarsus)
sd(zTarsus)
hist(zTarsus)

# Normal distribution functions
znormal <- rnorm(1000000)
hist(znormal, breaks = 100)
summary(znormal)

# Quantile functions
qnorm(c(0.025, 0.975))
pnorm(qnorm(c(0.025, 0.975)))

# Visualization with quantiles
par(mfrow = c(1, 2))
hist(znormal, breaks = 100)
abline(v = qnorm(c(0.25, 0.5, 0.75)), lwd = 2)
abline(v = qnorm(c(0.025, 0.975)), lwd = 2, lty = "dashed")

plot(density(znormal))
abline(v = qnorm(c(0.25, 0.5, 0.75)), col = "gray")
abline(v = qnorm(c(0.025, 0.975)), lty = "dotted", col = "black")
abline(h = 0, lwd = 3, col = "blue")
text(2, 0.3, "1.96", col = "red", adj = 0)
text(-2, 0.3, "-1.96", col = "red", adj = 1)

# Boxplot by sex
boxplot(d$Tarsus ~ d$Sex.1, col = c("red", "blue"), ylab = "Tarsus length (mm)")

# Excercise 1: Why use d$Sex.1 instead of d$Sex?
# d$Sex.1 contains the sex information as character strings ("female", "male"), while d$Sex contains numerical codes (0, 1). Using d$Sex.1 in the boxplot automatically provides meaningful labels on the x-axis, whereas d$Sex would show "0" and "1" which are less interpretable.

# Exercise 2: When might median or mode be more useful than mean?
# Median is more useful when data is skewed or has outliers, as it's less affected by extreme values
# Mode is most useful for categorical data or when looking for the most common value in discrete data
# For the tarsus measurements, the median (18.6 mm) was very close to the mean (18.52 mm), suggesting relatively symmetric data

# Exercise 3: How does precision affect histogram bin size?
# The precision of measurement determines the appropriate bin size. With highly precise measurements (many decimal places), smaller bins can be used. With less precise measurements, larger bins are more appropriate. In our case, rounding to 1 decimal place was appropriate given the measurement precision.

# Exercise 4: R function for z-scores
zTarsus_scale <- scale(d2$Tarsus)
var(zTarsus_scale, na.rm = TRUE)  # Should be 1

# Exercise 5: Why prefer d$Sex.1 over d$Sex? Alternatives?
# As mentioned in Exercise 1, d$Sex.1 provides meaningful labels. Alternatives include:
factor(d$Sex, levels = c(0,1), labels = c("female", "male")) # Converting d$Sex to a factor with labels
boxplot(d$Tarsus ~ d$Sex, names = c("female", "male")) # Using the names argument in boxplot

# Exercise 6: Difference between distributions with same mean but different variances
# Both distributions are centered at 0, but:
# var = 2: Data is more clustered around the mean, standard deviation = √2 ≈ 1.41
# var = 200: Data is much more spread out, standard deviation = √200 ≈ 14.14
# he distribution with var = 200 is much wider and flatter, indicating more variability in the data while maintaining the same center point.

# Additional Note about Variance of Z-standardized Data
# The variance of z-standardized data is always 1 because:
# Z-standardization transforms data to have mean = 0 and standard deviation = 1
# Since variance = (standard deviation)², variance also equals 1
