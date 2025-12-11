rm(list=ls())
d <- read.table("../data/SparrowSize.txt", header=TRUE)

# Linear model: Mass vs Tarsus
plot(d$Mass ~ d$Tarsus, ylab="Mass (g)", xlab="Tarsus (mm)", pch=19, cex=0.4)
d1 <- subset(d, d$Mass!="NA")
d2 <- subset(d1, d1$Tarsus!="NA")
model1 <- lm(Mass ~ Tarsus, data=d2)
summary(model1)

# Z-standardized model
d2$z.Tarsus <- scale(d2$Tarsus)
model3 <- lm(Mass ~ z.Tarsus, data=d2)
summary(model3)

# Model diagnostics
par(mfrow=c(2,2))
plot(model3)

# t-test as linear model
d4 <- subset(d, d$Wing!="NA")
m4 <- lm(Wing ~ Sex, data=d4)
t4 <- t.test(d4$Wing ~ d4$Sex, var.equal=TRUE)
summary(m4)
t4

# Excercise 2
# Bill size vs mass analysis
bill_mass_data <- subset(d, !is.na(Bill) & !is.na(Mass))
model_bill <- lm(Mass ~ Bill, data=bill_mass_data)
summary(model_bill)

# Check sex differences first
t.test(bill_mass_data$Mass ~ bill_mass_data$Sex.1)
# If significant, analyze sexes separately
