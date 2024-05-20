library(ggplot2)
library(dplyr)


library(GGally)
library(corrplot)


# Example of preparing data, ensure you adjust column names as per your dataset
cancer_data <- cancer_data %>%
  select(State, popEst2015, incidenceRate) %>%
  mutate(popEstThousands = popEst2015 / 1000)  # Convert population estimate to thousands for better scale on plot

ggplot(cancer_data, aes(x = popEstThousands, y = incidenceRate, color = State)) +
  geom_point(alpha = 0.5) +
  labs(title = "Cancer Incidence Rate vs. Population Estimates by State",
       x = "Population Estimates (thousands)",
       y = "Cancer Incidence Rate") +
  theme_minimal()

# Scatter Plot Matrix
ggpairs(data[, c("PovertyEst", "medIncome", "incidenceRate", "deathRate")])

# Compute correlations
correlations <- cor(data[, c("PovertyEst", "medIncome", "incidenceRate", "deathRate")], use = "complete.obs")

# Correlation Heatmap
corrplot(correlations, method = "color")

