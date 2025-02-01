**Data Analysis & Visualization in R**

This project demonstrates how to analyze, summarize, visualize, and interpret data using R. A simulated dataset is used to walk through data processing, statistical testing, and reporting with R’s powerful packages.

**Project Overview**
This project covers:
- Data Import & Cleaning
- Summarization & Exploratory Data Analysis (EDA)
- Data Transformation & Tidying
- Statistical Hypothesis Testing
- Data Visualization
- Generating Automated Reports

**Key Steps & Concepts**

- **Data Import & Summary**
  - Importing the dataset into R
  - Summarizing data using base R functions
  - Creating summary tables with gtsummary and psych packages

- **Data Summarization & Transformation**
  - Using dplyr: group_by(), summarise() for grouped statistics
  - Tidying data using tidyr: pivot_longer() function

- **Data Visualization**
Creating visualizations with ggplot2:
  - Histogram
  - Density Plot
  - Boxplot
  - Violin Plot
  - Violin+Box Plot

- **Hypothesis Testing**
  - Conducting t-tests (independent sample t-test, paired t-test)
  - Performing ANOVA (One-Way & Two-Way) 

- **Statistical Interpretation**
  - Extracting t-stat, p-value, and Confidence Intervals (CI)
  - Using report() from the report package to generate human-readable interpretations
  - Generating visual representations of statistical tests with webr::plot() 

- **Report Generation**
Creating an HTML report of the analysis using rmarkdown::render() 

**Technologies & Libraries Used**
- R Programming
- tidyverse (ggplot2, dplyr, tidyr)
- gtsummary, psych (data summarization)
- report, webr (statistical analysis & interpretation)
- rmarkdown (report generation)
