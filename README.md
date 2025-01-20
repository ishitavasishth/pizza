# PizzaData Analysis Project
This repository contains an exploratory analysis of marketing and sales data for a frozen pizza brand, based on the PizzaData.csv dataset. The dataset includes weekly observations from 19 stores, each with 52 weeks of data. The project aims to address several business questions related to pricing, marketing activities, and sales performance.

# Project Overview
The dataset contains the following variables:

category.volume: Unit sales volume of all brands in the category
unit.sales: Unit sales of the Tombstone brand
price: Unit price of the Tombstone brand
feature: Whether there was a feature promotion for Tombstone (1/0)
display: Whether there was a display promotion for Tombstone (1/0)
This project addresses key business questions by leveraging SQL and data analysis techniques.

Business Questions Solved
Lowest Average Price

Which store has the lowest unweighted average price for Tombstone?
Feature Without Display

How many times was there a Tombstone feature promotion without a display?
Modal Price

What is the most frequently occurring (modal) price for Tombstone?
Market Share

What is the unit volume-based market share for Tombstone?
Average Unit Sales at Specific Price

What is the average unit sales volume when the Tombstone price was exactly $2.75?
Price Under Both Feature and Display

What is the average unweighted price when both a feature and a display promotion occurred?
Total Revenue

What is the total revenue generated by Tombstone pizza across all stores and weeks?
Revenue Without Display

What is the average sales revenue when there was no active Tombstone display?
Mean Difference in Unit Sales (Display vs. No Display)

What is the mean difference in average unit sales when there is a Tombstone display compared to when there is not?
Unit Sales Above 2 Standard Deviations

How many times was the Tombstone unit sales volume more than 2 standard deviations above the average?
Revenue Comparison by Feature Activity
How many stores earn less average revenue when there is an active feature compared to when there is no feature?
Stores Without Displays
How many stores never had an observed Tombstone display during the 52 weeks?


# Technologies Used
SQL: For querying and data analysis
R / Python: For additional data exploration and visualization
Excel: For data manipulation and quick calculations
How to Use This Repository
Dataset: The repository contains the PizzaData.csv file, which is the primary dataset for this analysis.
SQL Scripts: Queries for each question are included in the queries.sql file.
Results: Summary results for each question are provided in results.md.
# Key Insights
Promotions (features and displays) significantly impact sales and revenue metrics.
Price sensitivity varies across stores, influencing revenue and sales differently under promotional conditions.
Tombstone's market share and revenue metrics highlight potential opportunities for targeted marketing and pricing strategies.


