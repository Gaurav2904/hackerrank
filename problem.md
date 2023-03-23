# Hive Problem

## Problem Description

To gain insights into their customer base and product performance, LTI Mindtree wants to analyze their sales data. Hive has been chosen for their ETL and data analysis processes. Using Hive, you will help the company extract, transform, and analyze sales data.

## Data Description

LTI Mindtree has provided three datasets:
- Customer information (customer_id, name, age, gender, city, state, country)
- Product information (product_id, product_name, category, price)
- Sales transactions (transaction_id, customer_id, product_id, quantity, transaction_date)

The datasets are stored in CSV files named `customers.csv`, `products.csv`, and `transactions.csv`, respectively.

## Requirements

1) The customer, product, and sales transaction datasets need to be schematized.
2) Using Hive tables, load the datasets.
3) Model the data warehouse with a star schema, with the sales transaction dataset as the fact table and the customer and product datasets as the dimension tables.
4) The total sales for each product category and each customer should be calculated.
5) Based on total sales, identify the top 10 products.
6) Determine whether any patterns or trends can be found in the sales data.

## Hints

1) For the CSV files, create external tables in Hive.
2) Calculate sales figures with Hive's built-in functions and aggregation techniques.
3) Merge the fact and dimension tables using appropriate Hive join operations.

## Assessment Criteria

Your solution will be assessed based on the following criteria:
1) Accuracy of the schemas and data modeling.
2) Efficiency of the ETL process and data extraction methods.
3) Correctness of the calculated sales figures and top 10 products.
4) Quality of the insights and trends discovered from the sales data.
