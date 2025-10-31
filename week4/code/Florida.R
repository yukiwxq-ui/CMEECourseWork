rm(list=ls())

# Load data
load("../data/KeyWestAnnualMeanTemperature.RData")

# Compute observed correlation
obs_cor <- cor(ats$Year, ats$Temp)

# Permutation test
n_perm <- 10000
perm_cor <- numeric(n_perm)
set.seed(123)

for(i in 1:n_perm){
  shuffled_temp <- sample(ats$Temp)
  perm_cor[i] <- cor(ats$Year, shuffled_temp)
}

# Approximate p-value
p_value <- mean(abs(perm_cor) >= abs(obs_cor))
cat("Observed correlation:", obs_cor, "\n")
cat("Permutation p-value:", p_value, "\n")

# Save histogram PDF
pdf("../results/Florida_Temp_Permutation.pdf", width=7, height=5)
hist(perm_cor, breaks=50,
     main="Permutation distribution of correlation coefficients",
     xlab="Correlation coefficient",
     ylab="Frequency",
     col="skyblue",
     border="white",
     ylim=c(0, max(table(cut(perm_cor, breaks=50)))),
     las=1)
box(lwd=1)
dev.off()
cat("Histogram PDF saved to ../results/Florida_Temp_Permutation.pdf\n")

system("cd ../results && pdflatex Florida_Temp_Report.tex")
