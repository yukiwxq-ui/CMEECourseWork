rm(list=ls())

# Daphnia analysis
daphnia <- read.delim("../data/daphnia.txt")
summary(daphnia)

# Model with two categorical predictors
daphniaMod <- lm(Growth.rate ~ Detergent + Daphnia, data=daphnia)
summary(daphniaMod)
anova(daphniaMod)

# Tukey HSD test
daphniaANOVAMod <- aov(Growth.rate ~ Detergent + Daphnia, data=daphnia)
daphniaModHSD <- TukeyHSD(daphniaANOVAMod)
plot(daphniaModHSD)

# Model diagnostics
par(mfrow=c(2,2))
plot(daphniaMod)

# Timber dataset - multiple regression
timber <- read.delim("../data/timber.txt")
pairs(timber)
cor(timber)

timberMod <- lm(volume ~ girth + height, data=timber)
summary(timberMod)
anova(timberMod)

# Exercise 1:

# Timber model without outlier
timber_no_outlier <- timber[-which.max(timber$volume),]
timberMod2 <- lm(volume ~ girth + height, data=timber_no_outlier)
summary(timberMod2)
# Compare conclusions with and without outlier

# Exercise 2:

# Ipomopsis analysis
plantGrowth <- read.delim("../data/ipomopsis.txt")
# Follow checklist: outliers, homogeneity, normality, zeroes, collinearity
# Fit models with interaction
model_int <- lm(Fruit ~ Root * Grazing, data=plantGrowth)
summary(model_int)

# Exercise 3:

# Sparrow morphology analysis
d <- read.table("../data/SparrowSize.txt", header=TRUE)
sparrow_model <- lm(Mass ~ Tarsus + Wing + Bill + Sex.1, data=d)
summary(sparrow_model)
# Use stepwise selection or AIC to find best model
