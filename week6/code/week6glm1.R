getwd()
list.files()
list.files("../data/")

# Load required packages
require(ggplot2)
require(MASS)
require(ggpubr)
require(ggeffects)

# Load fisheries data
fish <- read.csv("../data/fisheries.csv", stringsAsFactors = T)

# Initial exploration
str(fish)
ggplot(fish, aes(x=MeanDepth, y=TotAbund))+
  geom_point()+
  labs(x= "Mean Depth (km)", y="Total Abundance")+
  theme_classic()

# Model 1: Basic Poisson
M1 <- glm(TotAbund~MeanDepth, data = fish, family = "poisson")
summary(M1)

# Calculate Pseudo-R^2 for M1
# PseudoR^2 = 1 - (15770/27779) = 0.43

# Model validation
par(mfrow=c(2,2))
plot(M1)

# Check outliers
sum(cooks.distance(M1)>1)

# Calculate dispersion parameter for M1
# DispersionParameter = 15770/144 = 109.51

# Explore Period effect
fish$Period <- factor(fish$Period)
scatterplot <- ggplot(fish, aes(x=MeanDepth, y=TotAbund, color=Period))+
  geom_point()+
  labs(x= "Mean Depth (km)", y="Total Abundance")+
  theme_classic()+
  scale_color_discrete(name="Period", labels=c("1979-1989", "1997-2002"))
boxplot <- ggplot(fish, aes(x=Period, y=TotAbund))+
  geom_boxplot()+
  theme_classic()+
  labs(x="Period", y="Total Abundance")
ggarrange(scatterplot, boxplot, labels=c("A","B"), ncol=1, nrow=2)

# Model 2: Poisson with Period interaction
M2 <- glm(TotAbund~MeanDepth*Period, data = fish, family="poisson")
summary(M2)
anova(M2, test="Chisq")

# Calculate dispersion parameter for M2
# DispersionParameter = 14293/142 = 100.65

# Model 3: Negative Binomial
M3 <- glm.nb(TotAbund~MeanDepth*Period, data = fish)
summary(M3)
anova(M3, test = "Chisq")

# Model 4: Reduced Negative Binomial
M4 <- glm.nb(TotAbund~MeanDepth+Period, data = fish)
summary(M4)
anova(M4, test = "Chisq")

# Model validation for M4
par(mfrow=c(2,2))
plot(M4)

# Calculate dispersion parameter for M4
# DispersionParameter = 158.23/143 = 1.11

# Calculate Pseudo-R^2 for M4
# PseudoR^2 = 1 - (158.23/334.13) = 0.53

# Plotting the final model
range(fish$MeanDepth)
period1 <- data.frame(MeanDepth=seq(from=0.804, to=4.865, length=100), Period="1")
period2 <- data.frame(MeanDepth=seq(from=0.804, to=4.865, length=100), Period="2")

period1_predictions <- predict(M4, newdata = period1, type = "link", se.fit = TRUE)
period2_predictions <- predict(M4, newdata = period2, type = "link", se.fit = TRUE)

period1$pred <- period1_predictions$fit
period1$se <- period1_predictions$se.fit
period1$upperCI <- period1$pred + (period1$se*1.96)
period1$lowerCI <- period1$pred - (period1$se*1.96)

period2$pred <- period2_predictions$fit
period2$se <- period2_predictions$se.fit
period2$upperCI <- period2$pred + (period2$se*1.96)
period2$lowerCI <- period2$pred - (period2$se*1.96)

complete <- rbind(period1, period2)

ggplot(complete, aes(x=MeanDepth, y=exp(pred)))+ 
  geom_line(aes(color=Period))+
  geom_ribbon(aes(ymin=exp(lowerCI), ymax=exp(upperCI), fill=Period, alpha=0.3), show.legend = FALSE)+ 
  geom_point(fish, mapping = aes(x=MeanDepth, y=TotAbund, color=Period))+
  labs(y="Total Abundance", x="Mean Depth (km)")+
  theme_classic()+
  scale_color_discrete(name="Period", labels=c("1979-1989", "1997-2002"))

# Alternative plotting with ggeffects
plot(ggpredict(M4, terms=c("MeanDepth", "Period")), show_data=T)

# Bee Mites Analysis
mites <- read.csv("../data/bee_mites.csv")
mites_m1 <- glm(Dead_mites~Concentration, data = mites, family = "poisson")
summary(mites_m1)
anova(mites_m1, test = "Chisq")

# Calculate Pseudo-R^2 for mites model
# PseudoR^2 = 1 - (109.25/154.79) = 0.29

# Calculate dispersion parameter for mites model
# DispersionParameter = 109.25/113 = 0.97

# Model validation for mites
par(mfrow=c(2,2))
plot(mites_m1)

# Plot mites model
range(mites$Concentration)
new_data <- data.frame(Concentration=seq(from=0, to=2.16, length=100))
predictions <- predict(mites_m1, newdata = new_data, type = "link", se.fit = TRUE)
new_data$pred <- predictions$fit
new_data$se <- predictions$se.fit
new_data$upperCI <- new_data$pred + (new_data$se*1.96)
new_data$lowerCI <- new_data$pred - (new_data$se*1.96)

ggplot(new_data, aes(x=Concentration, y=exp(pred)))+ 
  geom_line(col="black")+
  geom_ribbon(aes(ymin=exp(lowerCI), ymax=exp(upperCI), alpha=0.1), show.legend = FALSE, fill="grey")+ 
  geom_point(mites, mapping = aes(x=Concentration, y=Dead_mites), col="blue")+
  labs(y="Number of Dead Mites", x="Concentration (g/l)")+
  theme_classic()

# ANSWERS TO EXERCISES:

# 1. Species richness on Galapagos islands analysis would require:
gala <- read.table("../data/gala.txt", header=TRUE)
# Model: 
glm(Species ~ log(Area), data=gala, family="poisson")

# 2. Amphibian roadkills analysis would require:
roadkills <- read.table("../data/RoadKills.txt", header=TRUE)
# Model: 
glm(TOT.N ~ D.PARK, data=roadkills, family="poisson")

