rm(list=ls())
d <- read.table("../data/SparrowSize.txt", header=TRUE)

# t-test for sex difference in mass
boxplot(d$Mass ~ d$Sex.1, col = c("red", "blue"), ylab="Body mass (g)")
t.test1 <- t.test(d$Mass ~ d$Sex.1)
t.test1

# Small dataset comparison
d1 <- as.data.frame(head(d, 50))
t.test2 <- t.test(d1$Mass ~ d1$Sex)
t.test2

# Excercise 1:
# Wing length comparisons
t.test(d$Wing ~ d$Sex.1)  # Full dataset
d2001 <- subset(d, d$Year==2001)
t.test(d2001$Wing ~ d2001$Sex.1)  # 2001 only
# Tarsus comparison
t.test(d$Tarsus ~ d$Sex.1)

# Excercise 2:
# Batch tests by year
results <- list()
years <- unique(d$Year)

for(year in years) {
  year_data <- subset(d, Year == year & !is.na(Mass) & !is.na(Sex.1))
  
  # Check if we have enough data for both sexes
  sex_counts <- table(year_data$Sex.1)
  
  if(length(sex_counts) >= 2 && all(sex_counts >= 2)) {
    # Perform t-test only if we have at least 2 observations per sex
    tryCatch({
      results[[as.character(year)]] <- t.test(Mass ~ Sex.1, data = year_data)
    }, error = function(e) {
      message(paste("Could not perform t-test for year", year, ":", e$message))
    })
  } else {
    message(paste("Insufficient data for year", year, 
                  "- Sex counts:", paste(names(sex_counts), sex_counts, collapse = ", ")))
  }
}

# Display results
for(year_name in names(results)) {
  cat("\n=== Year", year_name, "===\n")
  print(results[[year_name]])
}

# Excercise 3:
# Create two-level variable for years
d$Period <- ifelse(d$Year %in% 2000:2004, "Early", "Late")
d$Period <- as.factor(d$Period)

# Test differences between periods
t.test(d$Tarsus ~ d$Period, na.rm=TRUE)
t.test(d$Mass ~ d$Period, na.rm=TRUE)
t.test(d$Wing ~ d$Period, na.rm=TRUE)
t.test(d$Bill ~ d$Period, na.rm=TRUE)
