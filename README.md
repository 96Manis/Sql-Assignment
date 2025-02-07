# SQL Assessment

## Overview
This repository contains SQL queries for data exploration, cleaning, and analysis based on an assessment dataset. The dataset includes transaction records with details such as payment methods, sales regions, product information, customer demographics, and discount impacts.

## Repository Contents
- **assessment.sql**: Contains all SQL queries used for data cleaning, aggregation, and analysis.
- **README.md**: Provides details on the queries used and key insights derived from the analysis.

## Data Cleaning
To ensure data accuracy, the following steps were performed:
- **Identifying Missing Data**: Checked for null values in critical fields.
- **Standardizing Payment Methods**: Corrected inconsistencies in payment method names.
- **Correcting Misplaced Data**: Fixed incorrect transaction records.
- **Removing Rows with Critical Missing Data**: Deleted records where essential fields were null.

## Aggregate Metrics
Key SQL queries and their outputs:
- **Total Sales:** `328,406,502.20`
- **Average Transaction Amount by Payment Method:**
  - UPI: `86,465.63`
  - Cash: `22,619.01`
  - Debit Card: `22,536.51`
  - Credit Card: `21,992.63`
- **Sales by Region:**
  - South: `100,291,783.81`
  - East: `85,761,600.16`
  - West: `69,859,816.99`
  - North: `67,438,221.71`
- **Top Products by Sales Volume:**
  - Apple: `60,241` units
  - Notebook: `18,029` units
  - T-Shirt: `13,506` units

## Drill-Down Analysis
- **Sales by Store Type and Region**:
  - South - In-Store: `50,704,027.99`
  - East - In-Store: `43,853,426.05`
  - South - Online: `49,559,166.96`
- **Customer Demographics (Age/Gender):**
  - Male: Avg Age = `46.11`, Transactions = `4,970`
  - Female: Avg Age = `45.78`, Transactions = `5,037`
  - Other: Avg Age = `45.57`, Transactions = `5,135`
- **Discount Impact on Sales:**
  - High Discount: `127,624,860.66`
  - Low Discount: `200,781,641.54`
- **Product Return Rate:**
  - Notebook: `48.86%`
  - Sofa: `49.59%`
  - Laptop: `50.12%`
  - Apple: `50.75%`

## Key Insights
- **Total Sales**: Approximately `328.4M`, with the South region contributing the highest share.
- **Payment Methods**: UPI had the highest average transaction amount (`~86,465`), while other methods averaged around `22,000`.
- **Top Products**: Apple was the most sold product (`60,241` units), followed by Notebooks and T-Shirts.
- **Store Performance**: Online and In-Store sales were balanced, but Online sales performed better in the South and East regions.
- **Customer Demographics**: The average customer age is `45-46` years, with a balanced gender distribution.
- **Discount Impact**: High-discount sales contributed `~127.6M`, but low-discount sales generated more revenue (`~200.8M`).
- **Returns**: High return rates (`~48-51%`) across major products, with the highest return rate in an unknown category (`~54.4%`).

## Repository Link
[GitHub Repository](https://github.com/96Manis/Sql-Assignment/edit/main)


---
This README serves as a structured guide to the SQL assessment, detailing data preparation, insights, and findings.

