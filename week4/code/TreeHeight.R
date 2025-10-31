#!/usr/bin/env Rscript

# This script calculates tree heights from distance and angle data.
# It reads 'trees.csv' from the data directory and saves 'TreeHts.csv' in the results directory.

# --- Function Definition ---
TreeHeight <- function(degrees, distance) {
  radians <- degrees * pi / 180
  height <- distance * tan(radians)
  return(height)
}

# --- Main Script ---
# Load data (relative path)
trees <- read.csv("../../week3/data/trees.csv")

# Calculate tree heights using the function
tree_heights <- TreeHeight(trees$Angle.degrees, trees$Distance.m)

# Add the calculated heights as a new column
trees$Tree.Height.m <- tree_heights

# Create the results directory if it doesn't exist
if (!dir.exists("../results")) {
  dir.create("../results")
}

# Save the output file (relative path)
write.csv(trees, "../results/TreeHts.csv", row.names = FALSE)

# Print confirmation
print("Tree heights calculated and saved to '../results/TreeHts.csv'")
