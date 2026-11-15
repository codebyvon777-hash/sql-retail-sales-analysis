# SQL Retail Sales Analysis

## Project Overview

This project analyzes simulated retail sales data using MySQL to identify revenue trends, product performance, category performance, and salesperson performance.

The goal was to use SQL queries to turn raw sales records into useful business insights.

## Tools Used

- MySQL
- MySQL Workbench
- SQL

## Dataset

The dataset contains 15 simulated retail orders from October 1–15, 2026.

It includes the following columns:

- Order_ID
- Order_Date
- Product
- Category
- Salesperson
- Quantity
- Unit_Price
- Sales

## SQL Analysis

The project uses SQL queries to perform seven analyses:

1. Calculate total revenue.
2. Calculate revenue by product.
3. Calculate revenue by category.
4. Calculate revenue by salesperson.
5. Count orders per salesperson.
6. Calculate average order revenue per salesperson.
7. Calculate units sold by product.

SQL functions and operations used include:

- `SUM()`
- `COUNT()`
- `AVG()`
- `GROUP BY`
- `ORDER BY`

## Key Findings

### Overall Revenue

Total revenue was **$6,750**.

### Product Performance

- Laptop generated the highest revenue at $2,400.
- Mouse generated the lowest revenue at $150.
- Tablets and mice tied for the most units sold, with 6 each.

### Category Performance

- Electronics generated $6,350.
- Accessories generated $400.
- Electronics accounted for approximately 94.1% of total revenue.

### Salesperson Performance

- Maya generated $3,400 in revenue.
- Alex generated $3,350 in revenue.
- Alex handled 8 orders, while Maya handled 7.
- Maya had a higher average order revenue of $485.71 compared to Alex's $418.75.

## Project Files

- `analysis.sql` — Contains all seven SQL analysis queries.

## Conclusion

This project demonstrates how SQL can be used to organize, summarize, and analyze retail sales data.

The analysis identified top-performing products, revenue differences between categories, and salesperson performance.

**Note:** The dataset is simulated and was created for portfolio and learning purposes.
