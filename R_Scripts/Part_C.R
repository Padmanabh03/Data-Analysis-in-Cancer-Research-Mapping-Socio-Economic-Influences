library(ggplot2)
library(dplyr)




# Visualization 3: Scatter Plot for Cancer Incidence Rates vs. Poverty Estimates
ggplot(cancer_data, aes(x = PovertyEst, y = incidenceRate)) +
  geom_point(color = "darkblue", alpha = 0.6) +
  geom_smooth(method = "lm", se = FALSE, color = "red") +
  labs(title = "Scatter Plot of Cancer Incidence Rates vs. Poverty Estimates",
       x = "Poverty Estimates (%)", y = "Incidence Rate") +
  theme_minimal()

# Visualization 4: Scatter Plot for Cancer Incidence Rates vs. Median Income
ggplot(cancer_data, aes(x = medIncome, y = incidenceRate)) +
  geom_point(color = "darkblue", alpha = 0.6) +
  geom_smooth(method = "lm", se = FALSE, color = "red") +
  labs(title = "Scatter Plot of Cancer Incidence Rates vs. Median Income",
       x = "Median Income", y = "Incidence Rate") +
  theme_minimal()

