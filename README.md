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

The project includes 13 SQL queries covering:

1. Identify distinct products.
2. Count orders for each product.
3. Find products with more than one order.
4. Calculate total revenue by product.
5. Calculate total revenue, order count, and average sale by product.
6. Find products with total revenue above $1,000 using a subquery.
7. Find orders above the overall average sale.
8. Find orders above their product's average sale using a correlated subquery.
9. Use `EXISTS` to find products with matching orders.
10. Categorize individual sales using `CASE WHEN`.
11. Count orders in each sales category.
12. Calculate total revenue by salesperson.
13. Calculate average sale and order count by salesperson.

### SQL Functions and Techniques Used

- `SELECT`
- `DISTINCT`
- `WHERE`
- `ORDER BY`
- `SUM()`
- `COUNT()`
- `AVG()`
- `GROUP BY`
- `HAVING`
- Subqueries
- Correlated subqueries
- `EXISTS`
- `CASE WHEN`

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

### Sales Categories

Using `CASE WHEN` to categorize sales:

- High Sale ($500 or more): 8 orders.
- Medium Sale ($200–$499.99): 3 orders.
- Low Sale (under $200): 4 orders.

## Project Files

- `analysis.sql` — Contains all 13 SQL analysis queries.
- `README.md` — Project documentation and key findings.
- `Retail_Sales_Analysis(Sales_Data) (1).csv` — The retail sales dataset used for analysis.

## Conclusion

This project demonstrates how SQL can be used to organize, summarize, and analyze retail sales data.

The analysis identified top-performing products, revenue differences between categories, salesperson performance, and sales distribution.

**Note:** The dataset is simulated and was created for portfolio and learning purposes.
