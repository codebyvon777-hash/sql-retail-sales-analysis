-- 1. Calculate total revenue
SELECT
    SUM(sales) AS total_revenue
FROM sales;

-- 2. Calculate revenue by product
SELECT
    product,
    SUM(sales) AS total_revenue
FROM sales
GROUP BY product
ORDER BY total_revenue DESC;

-- 3. Calculate revenue by category
SELECT
    category,
    SUM(sales) AS total_revenue
FROM sales
GROUP BY category
ORDER BY total_revenue DESC;

-- 4. Calculate revenue by salesperson
SELECT
    salesperson,
    SUM(sales) AS total_revenue
FROM sales
GROUP BY salesperson
ORDER BY total_revenue DESC;

-- 5. Count orders per salesperson
SELECT
    salesperson,
    COUNT(*) AS total_orders
FROM sales
GROUP BY salesperson
ORDER BY total_orders DESC;

-- 6. Calculate average order revenue per salesperson
SELECT
    salesperson,
    AVG(sales) AS average_order_revenue
FROM sales
GROUP BY salesperson
ORDER BY average_order_revenue DESC;

-- 7. Calculate units sold by product
SELECT
    product,
    SUM(quantity) AS units_sold
FROM sales
GROUP BY product
ORDER BY units_sold DESC;

