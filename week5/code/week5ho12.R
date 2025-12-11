rm(list=ls())
d <- read.table("../data/SparrowSize.txt", header=TRUE)

# ANOVA for wing length by sex
d1 <- subset(d, d$Wing!="NA")
model1 <- lm(Wing ~ Sex.1, data=d1)
summary(model1)
anova(model1)
boxplot(d1$Wing ~ d1$Sex.1, ylab="Wing length (mm)")

# t-test post-hoc
t.test(d1$Wing ~ d1$Sex.1, var.equal=TRUE)

# ANOVA for mass by year
m2 <- lm(Mass ~ as.factor(Year), data=d)
anova(m2)
am2 <- aov(Mass ~ as.factor(Year), data=d)
TukeyHSD(am2)

# Individual consistency (repeatability)
library(dplyr)
d1 %>% group_by(BirdID) %>% summarise(count=length(BirdID)) %>% count(count)

model3 <- lm(Wing ~ as.factor(BirdID), data=d1)
anova(model3)


# Exercise 1: Analysis of Aconite experiment should include:
#   
#   Descriptive statistics by treatment and plant part
# 
# ANOVA testing main effects and interactions
# 
# Post-hoc tests for significant factors
# 
# Assumption checks and appropriate data transformations


# Exercise 2:

# Fly morphometrics repeatability
fly_data <- read.table("Wylde_single.mounted.txt", header=TRUE)
# Calculate repeatability for each trait
traits <- colnames(fly_data)[3:24]  # Adjust based on actual column names

repeatability_results <- data.frame(Trait=character(), Repeatability=numeric())

for(trait in traits) {
  model <- lm(as.formula(paste(trait, "~ ID")), data=fly_data)
  anova_result <- anova(model)
  MS_among <- anova_result$"Mean Sq"[1]
  MS_within <- anova_result$"Mean Sq"[2]
  # Calculate repeatability using appropriate method
  # Add to results dataframe
}
