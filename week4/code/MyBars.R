#!/usr/bin/env Rscript

# Script: MyBars.R
# Purpose: Annotate a plot using lineranges + text labels and save to PDF
# Output: results/MyBars.pdf

# Load packages
library(ggplot2)

# 1. Load data
a <- read.table("../data/Results.txt", header = TRUE)

# 2. Add baseline column for lineranges
a$ymin <- 0

# 3. Start plot
p <- ggplot(a)

# 4. First linerange
p <- p + geom_linerange(
  aes(x = x, ymin = ymin, ymax = y1),
  linewidth = 0.5,          # updated parameter
  colour = "#E69F00",
  alpha = 0.5,
  show.legend = FALSE
)

# 5. Second linerange
p <- p + geom_linerange(
  aes(x = x, ymin = ymin, ymax = y2),
  linewidth = 0.5,
  colour = "#56B4E9",
  alpha = 0.5,
  show.legend = FALSE
)

# 6. Third linerange
p <- p + geom_linerange(
  aes(x = x, ymin = ymin, ymax = y3),
  linewidth = 0.5,
  colour = "#D55E00",
  alpha = 0.5,
  show.legend = FALSE
)

# 7. Annotate
p <- p + geom_text(
  aes(x = x, y = -500, label = Label),
  na.rm = TRUE               # removes the warning for missing labels
)

# 8. Style & axes
p <- p +
  scale_x_continuous("My x axis", breaks = seq(3, 5, by = 0.05)) +
  scale_y_continuous("My y axis") +
  theme_bw() +
  theme(legend.position = "none")

# 9. Create results directory if needed
if (!dir.exists("results")) dir.create("results")

# 10. Save plot
pdf("../results/MyBars.pdf")
print(p)
dev.off()
