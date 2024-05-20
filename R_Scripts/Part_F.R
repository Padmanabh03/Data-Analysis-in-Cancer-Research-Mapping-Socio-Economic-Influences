# Load necessary libraries
library(dplyr)


# Group data by State and calculate Descriptive Statistics for each State

statewise_stats <- cancer_data %>%
  group_by(State) %>%
  summarise(
    # Median Income Statistics
    Mean_MedIncome = mean(medIncome, na.rm = TRUE),
    Median_MedIncome = median(medIncome, na.rm = TRUE),
    #Range_MedIncome = range(medIncome, na.rm = TRUE),
    Variance_MedIncome = var(medIncome, na.rm = TRUE),
    Std_Dev_MedIncome = sd(medIncome, na.rm = TRUE),
    
    # Poverty Estimates Statistics
    Mean_PovertyEst = mean(PovertyEst, na.rm = TRUE),
    Median_PovertyEst = median(PovertyEst, na.rm = TRUE),
    #Range_PovertyEst = range(PovertyEst, na.rm = TRUE),
    Variance_PovertyEst = var(PovertyEst, na.rm = TRUE),
    Std_Dev_PovertyEst = sd(PovertyEst, na.rm = TRUE),
    
    # Cancer Incidence Rate Statistics
    Mean_IncidenceRate = mean(incidenceRate, na.rm = TRUE),
    Median_IncidenceRate = median(incidenceRate, na.rm = TRUE),
    #Range_IncidenceRate = range(incidenceRate, na.rm = TRUE),
    Variance_IncidenceRate = var(incidenceRate, na.rm = TRUE),
    Std_Dev_IncidenceRate = sd(incidenceRate, na.rm = TRUE)
  )

# Print the results
print(statewise_stats)

# Save the results to a CSV file
write.csv(statewise_stats, "statewise_descriptive_stats.csv", row.names = FALSE)


