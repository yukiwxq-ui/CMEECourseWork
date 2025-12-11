# Clear workspace
rm(list=ls())
getwd()
# Load observer data
d <- read.table("../data/ObserverRepeatability.txt", header=TRUE, fill = TRUE, quote = "", comment.char = "")
str(d)

# Data cleaning
d <- subset(d, d$Tarsus<=40)
d <- subset(d, d$Tarsus>=10)
d[is.na(d$Tarsus), ]
d <- na.omit(d)
d$Tarsus <- as.numeric(d$Tarsus)
hist(d$Tarsus)

# Descriptive statistics
summary(d$Tarsus)
var(d$Tarsus)
summary(d$BillWidth)
var(d$BillWidth)

# Load required packages
require(lme4)
require(lmtest)

# Mixed models for tarsus
mT1 <- lmer(Tarsus ~ 1 + (1|StudentID), data=d)
mT2 <- lmer(Tarsus ~ 1 + (1|StudentID) + (1|GroupN), data=d)

# Likelihood ratio test
lrtest(mT1, mT2)

# Summary of final model
summary(mT1)

# Calculate repeatability for tarsus
# Variance components: StudentID = 3.209, Residual = 1.228
# Repeatability = 3.209/(3.209 + 1.228) = 0.723

# ANSWERS TO EXERCISES:

# For bill width analysis (similar code structure):
# mB1 <- lmer(BillWidth ~ 1 + (1|StudentID), data=d)
# mB2 <- lmer(BillWidth ~ 1 + (1|StudentID) + (1|GroupN), data=d)
# lrtest(mB1, mB2)
# summary(mB1)

# Why group variance might not be significant:
# - Groups might not differ systematically in their measurements
# - Within-group variation might be larger than between-group variation
# - Sample size per group might be too small to detect group effects

# General problems with this dataset:
# - Different observers have different measurement techniques
# - Potential measurement errors and outliers
# - Unbalanced design with different numbers of measurements per student

