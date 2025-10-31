# PP_Regress.R
# Script to generate predator-prey regression analysis and plots

# Load required packages
suppressPackageStartupMessages({
  library(ggplot2)
  library(dplyr)
  library(tidyr)
})

# Read the data
data_path <- "../data/EcolArchives-E089-51-D1.csv"
pp_data <- read.csv(data_path, stringsAsFactors = FALSE)

# Data cleaning and preparation
pp_data_clean <- pp_data %>%
  filter(!is.na(Predator.mass), !is.na(Prey.mass),
         Predator.mass > 0, Prey.mass > 0) %>%
  mutate(
    Predator.lifestage = case_when(
      Predator.lifestage == "larva / juvenile" ~ "larva/juvenile",
      Predator.lifestage == "postlarva/juvenile" ~ "postlarva/juvenile",
      TRUE ~ Predator.lifestage
    )
  )

# Function to perform regression and extract results
get_regression_results <- function(data) {
  if(nrow(data) < 2) return(NULL)
  
  model <- lm(log10(Predator.mass) ~ log10(Prey.mass), data = data)
  summary_model <- summary(model)
  anova_model <- anova(model)
  
  return(data.frame(
    slope = coef(model)[2],
    intercept = coef(model)[1],
    R_squared = summary_model$r.squared,
    F_statistic = anova_model$F[1],
    p_value = anova_model$`Pr(>F)`[1],
    n = nrow(data)
  ))
}

# Perform regression analysis by feeding type and lifestage
regression_results <- pp_data_clean %>%
  group_by(Type.of.feeding.interaction, Predator.lifestage) %>%
  filter(n() >= 2) %>%  # Need at least 2 points for regression
  group_modify(~ get_regression_results(.x)) %>%
  ungroup() %>%
  filter(!is.na(slope))

# Save regression results to CSV
write.csv(regression_results, 
          file = "../results/PP_Regress_Results.csv", 
          row.names = FALSE)

# Create updated plot with one x-axis and shaded error bands
pp_plot <- ggplot(
  pp_data_clean,
  aes(
    x = log10(Prey.mass),
    y = log10(Predator.mass),
    colour = Predator.lifestage
  )
) +
  geom_point(alpha = 0.7, size = 2, shape = 3) +
  geom_smooth(
    method = "lm",
    se = TRUE,
    fill = "grey70",
    alpha = 0.3,
    aes(group = Predator.lifestage)
  ) +
  scale_x_continuous(name = "Log10 Prey Mass (g)") +
  scale_y_continuous(name = "Log10 Predator Mass (g)") +
  facet_wrap(
    ~ Type.of.feeding.interaction,
    ncol = 1,
    scales = "free_y",
    strip.position = "right"
  ) +
  scale_colour_manual(
    name = "Predator lifestage",
    values = c(
      "adult" = "#1f77b4",
      "juvenile" = "#ff7f0e",
      "larva" = "#2ca02c",
      "larva/juvenile" = "#d62728",
      "postlarva" = "#9467bd",
      "postlarva/juvenile" = "#8c564b"
    )
  ) +
  guides(colour = guide_legend(nrow = 1)) +   # << 控制 legend 在一行
  theme_bw() +
  theme(
    strip.placement = "outside",
    strip.text = element_text(size = 8),
    panel.grid.minor = element_blank(),
    legend.position = "bottom",
    axis.text = element_text(size = 8),
    axis.title = element_text(size = 10),
    legend.text = element_text(size = 8),
    strip.background = element_rect(fill = "white")
  )


# Save the plot as PDF

print(pp_plot)
pdf("../results/PP_Regress.pdf", width = 10, height = 8)
print(pp_plot)
dev.off()

# Print summary message
cat("Analysis completed successfully!\n")
cat("Number of feeding type - lifestage combinations:", nrow(regression_results), "\n")
cat("Plot saved to: ../results/PP_Regress.pdf\n")
cat("Results saved to: ../results/PP_Regress_Results.csv\n")