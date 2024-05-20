library(readxl)
library(dplyr)

# Calculate quantiles for median income and incidence rate
cancer_data <- cancer_data %>%
  mutate(
    Income_Quantile = ntile(medIncome, 4),
    CancerRate_Quantile = ntile(incidenceRate, 4)
  )
# Create a summary table to show counts of counties in each quantile combination
summary_table <- cancer_data %>%
  group_by(Income_Quantile, CancerRate_Quantile) %>%
  summarise(Count = n())

# View the summary table
print(summary_table)

# Create a heatmap
heatmap_plot <- ggplot(summary_table, aes(x = Income_Quantile, y = CancerRate_Quantile, fill = Count)) +
  geom_tile() + # This creates the tiles
  scale_fill_gradient(low = "orange", high = "red") + # Color gradient from low to high counts
  labs(title = "Heatmap of County Distribution by Income and Cancer Rate Quantiles",
       x = "Income Quantile",
       y = "Cancer Rate Quantile",
       fill = "Count of Counties") +
  theme_minimal() + # Minimal theme for a cleaner look
  theme(axis.text.x = element_text(angle = 45, hjust = 1)) # Improve x-axis label readability

# Display the plot
print(heatmap_plot)
