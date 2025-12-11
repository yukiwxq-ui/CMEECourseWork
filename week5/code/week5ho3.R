rm(list=ls())
d <- read.table("../data/SparrowSize.txt", header=TRUE)

# Convert BirdID to factor
d$BirdIDFact <- as.factor(d$BirdID)
str(d$BirdIDFact)

# Year as categorical vs continuous
plot(d$Mass ~ as.factor(d$Year), xlab="Year", ylab="House sparrow body mass(g)")
plot(d$Mass ~ d$Year, xlab="Year", ylab="House sparrow body mass(g)")

# Blue tit data
rm(list=ls())
b <- read.table("../data/BTLD.txt", header=TRUE)
plot(b$LD.in_AprilDays. ~ jitter(b$Year), ylab="Laying date (April days)", xlab="Year", pch=19, cex=0.3)

# ggplot2 violin plot
install.packages("ggplot2")
library(ggplot2)
p <- ggplot(b, aes(x=as.factor(Year), y=LD.in_AprilDays.)) + geom_violin()
p + stat_summary(fun.data="mean_sdl", geom="pointrange")