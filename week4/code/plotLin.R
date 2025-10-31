#!/usr/bin/env Rscript

# Script: plotLin.R
# Purpose: Plot linear regression with mathematical annotations
# Output: results/MyLinReg.pdf

# Load ggplot2
library(ggplot2)

# 1. Generate linear regression data
x <- seq(0, 100, by = 0.1)
y <- -4 + 0.25 * x + rnorm(length(x), mean = 0, sd = 2.5)
my_data <- data.frame(x = x, y = y)

# 2. Fit linear model
my_lm <- summary(lm(y ~ x, data = my_data))

# 3. Build scatter plot coloured by residual magnitude
p <- ggplot(my_data, aes(x = x, y = y, colour = abs(my_lm$residual))) +
  geom_point() +
  scale_colour_gradient(low = "black", high = "red") +
  theme(legend.position = "none") +
  scale_x_continuous(
    expression(alpha^2 * pi / beta * sqrt(Theta))
  )

# 4. Add regression line
p <- p + geom_abline(
  intercept = my_lm$coefficients[1, 1],
  slope = my_lm$coefficients[2, 1],
  colour = "red"
)

# 5. Add mathematical annotation on the plot (using annotate to avoid warning)
p <- p + annotate(
  "text",
  x = 60, y = 0,
  label = "sqrt(alpha) * 2 * pi",
  parse = TRUE,
  size = 6,
  colour = "blue"
)

# 6. Make results directory if missing
if (!dir.exists("results")) dir.create("results")

# 7. Save to PDF
pdf("../results/MyLinReg.pdf")
print(p)
dev.off()
