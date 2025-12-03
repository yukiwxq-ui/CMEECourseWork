rm(list=ls())
getwd()

2*2+1
## [1] 5
2*(2+1)
## [1] 6

4
12/2^3
## [1] 1.5
(12/2)^3 
## [1] 216

x <- 5
x
## [1] 5
y <- 2
y
## [1] 2
x2 <- x^2
x2
## [1] 25
x
## [1] 5
a<-x2+x
a
## [1] 30
y2 <- y^2
z2 <- x2 + y2
z <- sqrt(z2)
print(z)
## [1] 5.385165

3>2
## [1] TRUE
3 >= 3
## [1] TRUE
4<2
## [1] FALSE


myNumericVector <- c(1.3,2.5,1.9,3.4,5.6,1.4,3.1,2.9)
myCharacterVector <- c("low","low","low","low","high","high","high","high")
myLogicalVector <- c(TRUE,TRUE,FALSE,FALSE,TRUE,TRUE,FALSE,FALSE)

str(myNumericVector)
## num [1:8] 1.3 2.5 1.9 3.4 5.6 1.4 3.1 2.9
str(myCharacterVector)
## chr [1:8] "low" "low" "low" "low" "high" "high" "high" "high"
str(myLogicalVector)
## logi [1:8] TRUE TRUE FALSE FALSE TRUE TRUE ...


myMixedVector <-c(1, TRUE, FALSE, 3, "help", 1.2, TRUE, "notwhatIplanned")
str(myMixedVector)
## chr [1:8] "1" "TRUE" "FALSE" "3" "help" "1.2" "TRUE" "notwhatIplanned"

library(lme4)
require(lme4)

help(getwd)
help(log)

sqrt(4); 4^0.5; log(0); log(1); log(10); log(Inf)
## [1] 2
## [1] 2
## [1] -Inf
## [1] 0


exp(1)
## [1] 2.718282
pi
## [1] 3.141593

rm(list=ls())

d <- read.table("../data/SparrowSize.txt", header=TRUE)
str(d)
head(d)
summary(d)

table(d$Year)
table(d$BirdID)
table(table(d$BirdID))

library(dplyr)
require(dplyr)
BirdIDCount <- d %>% count(d$BirdID,d$BirdID, sort=TRUE)
BirdIDCount %>% count(n)

# Count observations per bird per year
repeats_per_bird_year <- d %>% 
  count(BirdID, Year) %>% 
  rename(observations = n)

# Summary of repeats distribution
table(repeats_per_bird_year$observations)

# Count unique birds per year and sex
library(tidyr)
individuals_per_year_sex <- d %>%
  distinct(BirdID, Year, Sex.1) %>%  # Get unique bird-year-sex combinations
  count(Year, Sex.1) %>%             # Count by year and sex
  pivot_wider(names_from = Sex.1, values_from = n, values_fill = 0)

print(individuals_per_year_sex)

# Excercise 1 results
# We recorded a total of 1,770 observations across 636 individual birds over 11 years (2000-2010). The distribution of observations per bird-year combination showed that most birds (225) were observed only once per year, while 147 bird-year combinations had 2 observations, and 98 had 3 observations. Two birds were exceptionally well-sampled with 12 observations each.

# Excercise 2 results
# Sampling effort varied across years, with peak activity in 2004-2005 (468 and 458 observations respectively). Sex ratios were generally balanced across years, with males comprising 51.3% of all observations. The number of unique individuals captured per year ranged from 3 in 2010 to 236 in 2000, with consistent representation of both sexes throughout the study period.
