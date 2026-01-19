# Professional Data Analysis by Province

This project contains an R script that loads, cleans, filters, and analyzes a dataset on professionals by province, occupation, sex, and period.

## Description

The script performs the following main tasks:

- Loads a CSV file with original data.
- Cleans and restructures the dataframe (removes irrelevant columns, renames key columns).
- Replaces empty or incorrect values in specific columns.
- Converts numeric text data with dots into proper numeric format.
- Defines a function to extract data filtered by province.
- Filters data based on specific criteria such as occupation, region, period, and sex.
- Generates a summary with totals, counts by sex, and proportion of men by province.

## Data Source

The data used in this analysis is sourced from the [Spanish National Institute of Statistics (INE)](https://www.ine.es/en/) and corresponds to publicly available statistics for Spain.

## Requirements

- R version 3.5 or higher
- `69959.csv` data file placed in the working directory.

## Usage Instructions

1. Place the file `69959.csv` in the directory configured as working directory in the script.
2. Run the `main.R` script in an R environment.
3. Use the function `extract_province(data, "ProvinceName")` to retrieve specific province data.
4. The final summary contains total professionals, men, women, and the proportion of men by province.

## Code Structure

- Section 3: Data loading and initial view.
- Section 4: Data cleaning and preparation.
- Section 5: Function definition for province-specific extraction.
- Section 6: Data filtering by defined criteria.
- Section 7: Summary generation with totals and proportions.

## Contact

For questions or suggestions, please open an issue or contact the repository maintainer.

---

This script is useful for statistical analysis and reporting of demographic data segmented by provinces and sociodemographic characteristics.
