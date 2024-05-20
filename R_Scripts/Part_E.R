# Load necessary libraries
library(dplyr)

# Calculate Descriptive Statistics for Median Income
income_stats <- cancer_data %>%
  summarise(
    Mean = mean(medIncome, na.rm = TRUE),
    Median = median(medIncome, na.rm = TRUE),
    Mode = as.numeric(names(which.max(table(medIncome)))),
    Range = range(medIncome, na.rm = TRUE),
    Variance = var(medIncome, na.rm = TRUE),
    Std_Deviation = sd(medIncome, na.rm = TRUE)
  )


# Calculate Descriptive Statistics for Poverty Estimates
poverty_stats <- cancer_data %>%
  summarise(
    Mean = mean(PovertyEst, na.rm = TRUE),
    Median = median(PovertyEst, na.rm = TRUE),
    Mode = as.numeric(names(which.max(table(PovertyEst)))),
    Range = range(PovertyEst, na.rm = TRUE),
    Variance = var(PovertyEst, na.rm = TRUE),
    Std_Deviation = sd(PovertyEst, na.rm = TRUE)
  )

# Calculate Descriptive Statistics for Cancer Incidence Rate
cancer_rate_stats <- cancer_data %>%
  summarise(
    Mean = mean(incidenceRate, na.rm = TRUE),
    Median = median(incidenceRate, na.rm = TRUE),
    Mode = as.numeric(names(which.max(table(incidenceRate)))),
    Range = range(incidenceRate, na.rm = TRUE),
    Variance = var(incidenceRate, na.rm = TRUE),
    Std_Deviation = sd(incidenceRate, na.rm = TRUE)
  )

# Print the results
print("Income Statistics:")
print(income_stats)
print("Poverty Statistics:")
print(poverty_stats)
  print("Cancer Incidence Rate Statistics:")
  print(cancer_rate_stats)


