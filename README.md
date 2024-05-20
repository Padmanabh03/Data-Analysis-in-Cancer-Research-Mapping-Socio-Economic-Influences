# Data Analysis in Cancer Research: Mapping Socio-Economic Influences

## Project Overview

Welcome to the GitHub repository for the project **"Data Analysis in Cancer Research: Mapping Socio-Economic Influences."** This project, conducted by Padmanabh Butala, explores the intricate relationships between socioeconomic factors and cancer incidence and mortality rates across various counties in the United States. The aim is to provide insights that can inform public health policies and resource allocation, ultimately helping to reduce the burden of cancer across different socio-economic strata.

## Dataset

The analysis utilizes the `Cancer.xlsx` dataset, which includes detailed information at the county level in the US, covering variables such as:

- County Code
- State Abbreviation
- Total number of people below the poverty line
- Median household income
- Estimated population in 2015
- Age-adjusted cancer incidence rates
- Average annual cancer incidence and death counts
- Cancer mortality rates and trends

## Objectives

The main objectives of this project are:

1. **Data Visualization and Summary Measures**:
   - Create visualizations to communicate the geographic distribution of cancer rates.
   - Develop an interactive Tableau dashboard for exploring cancer rates by income and poverty levels.
   - Utilize advanced visualization techniques to represent multi-variable relationships.
   - Highlight significant trends or outliers in the dataset.
   - Compute descriptive statistics for key variables.
   - Analyze regional patterns using summary tables categorized by quantiles.

2. **Regression Analysis**:
   - Construct and interpret linear regression models to examine the impact of socioeconomic factors on cancer rates.
   - Assess the model's goodness-of-fit and perform residual analysis.
   - Conduct hypothesis testing and investigate regression assumptions.

## Methodology

### Summary Measures

The summary measures involve descriptive statistical analysis using Tableau and R. Tableau helps in visual exploration, while R is used for computing central tendencies and variability measures.

### Regression Analysis

The regression analysis is performed using R, focusing on building linear regression models to identify relationships between socioeconomic indicators and cancer outcomes. The process includes data cleaning, model selection, diagnostic plots, and residual analysis.

## Results

### Key Findings

- Visualizations highlight geographic disparities in cancer rates.
- Interactive dashboard reveals trends between cancer rates, median income, and poverty levels.
- Advanced visualizations illustrate complex interrelationships between variables.
- Regression analysis shows no significant impact of median income and poverty estimates on cancer incidence rates.

## Conclusion

The analysis underscores the complexity of factors influencing cancer rates beyond simple economic metrics. The study suggests the need for multifaceted research approaches to better understand cancer dynamics and develop targeted public health strategies.

## How to Use This Repository

### Files and Directories

- `Cancer.xlsx`: The dataset used for the analysis.
- `scripts/`: Contains R scripts for data analysis and visualization.
- `Tableau/`: Includes Tableau workbooks for interactive visualizations.
- `report/`: Contains the final report in PDF format.

### Running the Analysis

1. **Data Preparation**: Ensure you have R and Tableau installed.
2. **R Scripts**: Navigate to the `scripts/` directory and run the R scripts to reproduce the summary measures and regression analysis.
3. **Tableau Workbooks**: Open the Tableau workbooks in the `Tableau/` directory to interact with the visualizations.

