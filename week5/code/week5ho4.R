rm(list=ls())
d <- read.table("../data/SparrowSize.txt", header=TRUE)
d1 <- subset(d, d$Tarsus!="NA")

# Standard error calculations
seTarsus <- sqrt(var(d1$Tarsus)/length(d1$Tarsus))
d12001 <- subset(d1, d1$Year==2001)
seTarsus2001 <- sqrt(var(d12001$Tarsus)/length(d12001$Tarsus))

# Dragon tail length simulation
rm(list=ls())
TailLength <- rnorm(500, mean=3.8, sd=2)
summary(TailLength)
hist(TailLength)

# Precision visualization
x <- 1:length(TailLength)
y <- mean(TailLength) + 0*x
plot(x, y, cex=0.03, ylim=c(2,5), xlim=c(0,500), 
     xlab="Sample size n", ylab="Mean of tail length ±SE (m)", col="red")

SE <- c(1)
mu <- c(1)
for (n in 1:length(TailLength)) {
  d <- sample(TailLength, n, replace=FALSE)
  mu[n] <- mean(TailLength)
  SE[n] <- sd(TailLength)/sqrt(n)
}

up <- mu + SE
down <- mu - SE
x <- 1:length(SE)
segments(x, up, x1=x, y1=down, lty=1)

# Complete population SE
seTarsus <- sqrt(var(d1$Tarsus, na.rm=TRUE)/length(na.omit(d1$Tarsus)))
seMass <- sqrt(var(d1$Mass, na.rm=TRUE)/length(na.omit(d1$Mass)))
seWing <- sqrt(var(d1$Wing, na.rm=TRUE)/length(na.omit(d1$Wing)))
seBill <- sqrt(var(d1$Bill, na.rm=TRUE)/length(na.omit(d1$Bill)))

# 2001 data only
d2001 <- subset(d, d$Year==2001)
seTarsus2001 <- sqrt(var(d2001$Tarsus, na.rm=TRUE)/length(na.omit(d2001$Tarsus)))
# Repeat for other variables...

# 95% CI calculations
CI95_Tarsus <- 1.96 * seTarsus
# Repeat for other variables...

# Answers will vary based on simulation results. Key insights should include understanding that larger sample sizes reduce standard error, and higher variance requires larger samples for precise estimates.


