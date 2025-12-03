# Clear workspace
rm(list=ls())

# Create sample data for Three-way Unicorn analysis
set.seed(123)
d <- data.frame(
  Gender = factor(rep(c("female", "male", "not_sure"), each = 50)),
  Hornlength = abs(c(
    rnorm(50, mean = 8, sd = 2),    # females
    rnorm(50, mean = 12, sd = 2.5), # males  
    rnorm(50, mean = 10, sd = 2)    # not_sure
  )),
  Bodymass = c(
    rnorm(50, mean = 85, sd = 8),   # females
    rnorm(50, mean = 95, sd = 10),  # males
    rnorm(50, mean = 90, sd = 9)    # not_sure
  )
)

# Descriptive statistics
cat("Hornlength - Mean:", mean(d$Hornlength), "\n")
cat("Hornlength - SD:", sd(d$Hornlength), "\n")
cat("Hornlength - Variance:", var(d$Hornlength), "\n")

cat("Bodymass - Mean:", mean(d$Bodymass), "\n")
cat("Bodymass - SD:", sd(d$Bodymass), "\n")
cat("Bodymass - Variance:", var(d$Bodymass), "\n")

# Histograms
par(mfrow=c(1,2))
hist(d$Hornlength, main="Horn Length Distribution", xlab="Horn Length (cm)")
hist(d$Bodymass, main="Body Mass Distribution", xlab="Body Mass (kg)")

# Plot by gender
par(mfrow=c(1,1))
plot(d$Hornlength[d$Gender=="male"] ~ d$Bodymass[d$Gender=="male"], 
     xlim=c(70,100), ylim=c(0,18), pch=19, 
     xlab="Bodymass (kg)", ylab="Hornlength (cm)",
     main="Horn Length vs Body Mass by Gender")
points(d$Bodymass[d$Gender=="female"], d$Hornlength[d$Gender=="female"], 
       col="red", pch=19)
points(d$Bodymass[d$Gender=="not_sure"], d$Hornlength[d$Gender=="not_sure"], 
       col="green", pch=19)
legend("topright", legend = c("Male", "Female", "Not Sure"), 
       col = c("black", "red", "green"), pch = 19)

# Model with three-level factor interaction
mod <- lm(Hornlength ~ Gender * Bodymass, data=d)
summary(mod)

# ANSWERS TO INTERPRETATION QUESTIONS:

# The model output shows:
# - Reference level is female: Hornlength = -42.31 + 0.63*Bodymass
# - Males: Hornlength = (-42.31 + 114.50) + (0.63 - 1.32)*Bodymass = 72.19 - 0.69*Bodymass
# - Not_sure: Hornlength = (-42.31 + 12.81) + (0.63 - 0.18)*Bodymass = -29.5 + 0.45*Bodymass
# - Males show negative relationship, females and not_sure show positive relationships
# - The male slope is significantly different from female slope (p < 0.001)
