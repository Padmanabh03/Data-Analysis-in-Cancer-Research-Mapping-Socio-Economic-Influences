library(ggplot2)
library(dplyr)
library(readxl)
library(sf)
library(tidyr)
library(RColorBrewer)
# Filtering to ensure clean data
cancer_data <- cancer_data %>%
  filter(!is.na(incidenceRate) & !is.na(deathRate))

# Selecting top 5 states based directly on death rate
top_states_by_death_rate <- cancer_data %>%
  arrange(desc(deathRate)) %>%
  slice(1:6)

# Creating a long format for plotting both rates side-by-side
long_data <- top_states_by_death_rate %>%
  select(State, incidenceRate, deathRate) %>%
  pivot_longer(cols = c(incidenceRate, deathRate), names_to = "RateType", values_to = "Value")

# Plotting side-by-side bars for incidence and death rates
ggplot(long_data, aes(x = State, y = Value, fill = RateType)) +
  geom_bar(stat = "identity", position = position_dodge(width = 0.9), color = "black") +
  scale_fill_manual(values = c("incidenceRate" = "steelblue", "deathRate" = "firebrick")) +
  labs(title = "Top 5 States by Cancer Death Rate",
       subtitle = "Comparing Incidence Rate and Death Rate",
       x = "State",
       y = "Rate per 100,000") +
  theme_minimal()


# Selecting top 5 counties based directly on death rate
top_counties_by_death_rate <- cancer_data %>%
  arrange(desc(deathRate)) %>%
  slice(0:5)

# Creating a long format for plotting both rates side-by-side
long_data_counties <- top_counties_by_death_rate %>%
  select(Name, incidenceRate, deathRate) %>%
  pivot_longer(cols = c(incidenceRate, deathRate), names_to = "RateType", values_to = "Value")

# Plotting side-by-side bars for incidence and death rates in counties
ggplot(long_data_counties, aes(x = Name, y = Value, fill = RateType)) +
  geom_bar(stat = "identity", position = position_dodge(width = 0.9), color = "black") +
  scale_fill_manual(values = c("incidenceRate" = "steelblue", "deathRate" = "firebrick")) +
  labs(title = "Top 5 Counties by Cancer Death Rate",
       subtitle = "Comparing Incidence Rate and Death Rate",
       x = "County",
       y = "Rate per 100,000") +
  theme_minimal()



