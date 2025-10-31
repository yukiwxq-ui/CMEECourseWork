#!/usr/bin/env Rscript

# Girko's Circular Law simulation script
# Saves plot to results/Girko.pdf

# Load required library
library(ggplot2)

# 1. Function to build ellipse
build_ellipse <- function(hradius, vradius){
  npoints <- 250
  a <- seq(0, 2 * pi, length = npoints + 1)
  x <- hradius * cos(a)
  y <- vradius * sin(a)
  return(data.frame(x = x, y = y))
}

# 2. Set matrix size
N <- 250

# 3. Generate random matrix and compute eigenvalues
M <- matrix(rnorm(N * N), N, N)
eigvals <- eigen(M)$values

eigDF <- data.frame(
  Real = Re(eigvals),
  Imaginary = Im(eigvals)
)

# 4. Build ellipse dataframe
my_radius <- sqrt(N)
ellDF <- build_ellipse(my_radius, my_radius)
names(ellDF) <- c("Real", "Imaginary")

# 5. Plot
p <- ggplot(eigDF, aes(x = Real, y = Imaginary)) +
  geom_point(shape = 3) +
  geom_hline(yintercept = 0) +
  geom_vline(xintercept = 0) +
  geom_polygon(
    data = ellDF,
    aes(x = Real, y = Imaginary, alpha = 1/20, fill = "red")
  ) +
  theme_minimal() +
  theme(legend.position = "none") +
  ggtitle("Girko's Circular Law")

# 6. Save plot
if (!dir.exists("results")) dir.create("results")
pdf("../results/Girko.pdf")
print(p)
dev.off()
