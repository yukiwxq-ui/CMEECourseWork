# Load required packages
require(ggplot2)
require(ggpubr)

# Worker bees analysis
worker <- read.csv("../data/workerbees.csv", stringsAsFactors = T)
str(worker)

# Exploratory plots
scatterplot <- ggplot(worker, aes(x=CellSize, y=Parasites))+
  geom_point()+
  labs(x= "Cell Size (cm)", y="Probability of Parasite")+
  theme_classic()
boxplot <- ggplot(worker, aes(x=factor(Parasites), y=CellSize))+
  geom_boxplot()+
  theme_classic()+
  labs(x="Presence/Absence of Parasites", y="Cell Size (cm)")
ggarrange(scatterplot, boxplot, labels=c("A","B"), ncol=1, nrow=2)

# Model 1: Binary logistic regression
M1 <- glm(Parasites~CellSize, data = worker, family = "binomial")
summary(M1)
anova(M1, test = "Chisq")

# Calculate flipping point
# β0/β1 = abs(-11.25/22.18) = 0.51cm

# Calculate Pseudo-R^2
# PseudoR^2 = 1 - (1104.9/1259.6) = 0.12

# Plotting the model
range(worker$CellSize)
new_data <- data.frame(CellSize=seq(from=0.352, to=0.664, length=100))
predictions <- predict(M1, newdata = new_data, type = "link", se.fit = TRUE)
new_data$pred <- predictions$fit
new_data$se <- predictions$se.fit
new_data$upperCI <- new_data$pred + (new_data$se*1.96)
new_data$lowerCI <- new_data$pred - (new_data$se*1.96)

ggplot(new_data, aes(x=CellSize, y=plogis(pred)))+ 
  geom_line(col="black")+
  geom_point(worker, mapping = aes(x=CellSize, y=Parasites), col="blue")+
  geom_ribbon(aes(ymin=plogis(lowerCI), ymax=plogis(upperCI), alpha=0.2), show.legend = FALSE)+ 
  labs(y="Probability of Infection", x="Cell Size (cm)")+
  theme_classic()

# Chytrid analysis
require(ggplot2)
chytrid <- read.csv("../data/chytrid.csv", stringsAsFactors = T)
str(chytrid)

# Exploratory plots
scatterplot <- ggplot(chytrid, aes(x=Springavgtemp, y=InfectionStatus))+
  geom_point()+
  labs(x= "Probability of Infection", y="Average Spring Temperature (Degrees Celsius)")+
  theme_classic()
boxplot <- ggplot(chytrid, aes(x=factor(InfectionStatus), y=Springavgtemp))+
  geom_boxplot()+
  theme_classic()+
  labs(x="Presence/Absence of Infection", y="Average Spring Temperature (Degrees Celsius)")
ggarrange(scatterplot, boxplot, labels=c("A","B"), ncol=1, nrow=2)

# Model 2: Binary logistic regression for chytrid
M2 <- glm(InfectionStatus~Springavgtemp, data = chytrid, family = "binomial")
summary(M2)
anova(M2, test="Chisq")

# Calculate flipping point
# β0/β1 = -(-0.06/0.05) = 1.2 degrees celsius

# Calculate Pseudo-R^2
# PseudoR^2 = 1 - (9270.7/9310.0) = 0.004

# Plotting chytrid model
range(chytrid$Springavgtemp)
new_data <- data.frame(Springavgtemp=seq(from=0.99, to=13.67, length=100))
predictions <- predict(M2, newdata = new_data, type = "link", se.fit = TRUE)
new_data$pred <- predictions$fit
new_data$se <- predictions$se.fit
new_data$upperCI <- new_data$pred + (new_data$se*1.96)
new_data$lowerCI <- new_data$pred - (new_data$se*1.96)

ggplot(new_data, aes(x=Springavgtemp, y=plogis(pred)))+ 
  geom_line(col="black")+
  geom_point(chytrid, mapping = aes(x=Springavgtemp, y=InfectionStatus), col="blue")+
  geom_ribbon(aes(ymin=plogis(lowerCI), ymax=plogis(upperCI), alpha=0.2), show.legend = FALSE)+ 
  labs(y="Probability of Infection", x="Average Spring Temperature (Degrees Celsius)")+
  theme_classic()

# Binomial chytrid analysis
chytrid_binomial <- read.csv("../data/chytrid_binomial.csv", stringsAsFactors = T)
str(chytrid_binomial)

# Model 3: Binomial regression
M3 <- glm(cbind(Positives, Total-Positives)~AverageSpringTemp, 
          data = chytrid_binomial, family = "binomial")
summary(M3)
anova(M3, test="Chisq")

# Calculate flipping point
# β0/β1 = abs(-0.4/0.09) = 4.44 degrees celsius

# Calculate Pseudo-R^2
# PseudoR^2 = 1 - (4795.7/5055.4) = 0.05

# Calculate dispersion parameter
# DispersionParameter = 4795.7/173 = 27.72

# Model validation
par(mfrow=c(2,2))
plot(M3)

# Check outliers
sum(cooks.distance(M3)>1)

# Model 4: Quasi-binomial
M4 <- glm(cbind(Positives, Total-Positives)~AverageSpringTemp, 
          data = chytrid_binomial, family = "quasibinomial")
summary(M4)
anova(M4, test="F")

# Plotting binomial model
range(chytrid_binomial$AverageSpringTemp)
new_data <- data.frame(AverageSpringTemp=seq(from=0.99, to=13.67, length=100))
predictions <- predict(M4, newdata = new_data, type = "link", se.fit = TRUE)
new_data$pred <- predictions$fit
new_data$se <- predictions$se.fit
new_data$upperCI <- new_data$pred + (new_data$se*1.96)
new_data$lowerCI <- new_data$pred - (new_data$se*1.96)

ggplot(new_data, aes(x=AverageSpringTemp, y=plogis(pred)))+ 
  geom_line(col="black")+
  geom_point(chytrid_binomial, mapping = aes(x=AverageSpringTemp, y=(Positives/Total)), col="blue")+
  geom_ribbon(aes(ymin=plogis(lowerCI), ymax=plogis(upperCI), alpha=0.2), show.legend = FALSE)+ 
  labs(y="Probability of Infection", x="Average Spring Temperature (Degrees Celsius)")+
  theme_classic()

# Bee mites binomial reanalysis
mites <- read.csv("../data/bee_mites.csv")

# Model 5: Binomial for bee mites
M5 <- glm(cbind(Dead_mites, Total-Dead_mites)~Concentration, 
          data = mites, family = "binomial")
summary(M5)
anova(M5, test = "Chisq")

# Calculate dispersion parameter
# DispersionParameter = 194.82/113 = 1.72

# Model validation
par(mfrow=c(2,2))
plot(M5)

# Model 6: Quasi-binomial for bee mites
M6 <- glm(cbind(Dead_mites, Total-Dead_mites)~Concentration, 
          data = mites, family = "quasibinomial")

# Plotting binomial bee mites model
range(mites$Concentration)
new_data <- data.frame(Concentration=seq(from=0, to=2.16, length=100))
predictions <- predict(M6, newdata = new_data, type = "link", se.fit = TRUE)
new_data$pred <- predictions$fit
new_data$se <- predictions$se.fit
new_data$upperCI <- new_data$pred + (new_data$se*1.96)
new_data$lowerCI <- new_data$pred - (new_data$se*1.96)

ggplot(new_data, aes(x=Concentration, y=plogis(pred)))+ 
  geom_line(col="black")+
  geom_point(mites, mapping = aes(x=Concentration, y=(Dead_mites/Total)), col="blue")+
  geom_ribbon(aes(ymin=plogis(lowerCI), ymax=plogis(upperCI), alpha=0.2), show.legend = FALSE)+ 
  labs(y="Probability of Infection", x="Concentration")+
  theme_classic()

# ANSWERS TO EXERCISES:

# 1. Endemicity on Galapagos islands analysis would require:
# gala <- read.table("gala.txt", header=TRUE)
# First calculate endemicity proportion: gala$Endemicity <- gala$Endemics/gala$Species
# Model: glm(cbind(Endemics, Species-Endemics) ~ log(Area), data=gala, family="binomial")

