library(lme4)

# Repeatability with mixed models
fly_data <- read.table("../data/Wylde_single.mounted.txt", header=TRUE)
lmm1 <- lmer(Femur_length ~ 1 + (1|ID), data=fly_data)
summary(lmm1)

# Calculate repeatability
var_components <- as.data.frame(VarCorr(lmm1))
among_var <- var_components[1,4]
within_var <- var_components[2,4]
repeatability <- among_var/(among_var + within_var)

# Sparrow repeatability
d <- read.table("../data/SparrowSize.txt", header=TRUE)
lmm_tarsus <- lmer(Tarsus ~ 1 + (1|BirdID), data=subset(d, !is.na(Tarsus)))
lmm_wing <- lmer(Wing ~ 1 + (1|BirdID), data=subset(d, !is.na(Wing)))
lmm_mass <- lmer(Mass ~ 1 + (1|BirdID), data=subset(d, !is.na(Mass)))


# Exercise 1: Repeatability calculations for sparrow traits will show:
#   Tarsus: High repeatability (structural trait)
# Wing: Moderate repeatability (can change with molt)
# Mass: Low repeatability (highly variable)

# Exercise 2: Models with random effects account for pseudoreplication and provide more reliable fixed effect estimates, especially with unbalanced data.

# Exercise 3:
  
# Model with multiple random effects
lmm_complex <- lmer(Tarsus ~ Sex.1 + (1|BirdID) + (1|Year), 
                    data=subset(d, !is.na(Tarsus)))
summary(lmm_complex)
