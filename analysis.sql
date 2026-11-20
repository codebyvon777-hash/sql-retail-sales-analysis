-- 1. Find each product
SELECT DISTINCT
    product
FROM sales;


-- 2. Count orders for each product
SELECT
    product,
    COUNT(*) AS total_orders
FROM sales
GROUP BY product;


-- 3. Find products with more than one order
SELECT
    product,
    COUNT(*) AS total_orders
FROM sales
GROUP BY product
HAVING COUNT(*) > 1;


-- 4. Calculate total revenue for each product
SELECT
    product,
    SUM(sales) AS total_revenue
FROM sales
GROUP BY product;


-- 5. Calculate total revenue, order count, and average sale
SELECT
    product,
    COUNT(*) AS total_orders,
    SUM(sales) AS total_revenue,
    AVG(sales) AS average_sale
FROM sales
GROUP BY product;


-- 6. Find products with total revenue above $1,000 (subquery)
SELECT
    order_id,
    product,
    salesperson,
    sales
FROM sales
WHERE product IN (
    SELECT product
    FROM sales
    GROUP BY product
    HAVING SUM(sales) > 1000
)
ORDER BY sales DESC;


-- 7. Find orders above the overall average sale
SELECT
    order_id,
    product,
    salesperson,
    sales
FROM sales
WHERE sales > (
    SELECT AVG(sales)
    FROM sales
);


-- 8. Find orders above their product's average sale (correlated subquery)
SELECT
    s.order_id,
    s.product,
    s.salesperson,
    s.sales
FROM sales s
WHERE s.sales > (
    SELECT AVG(s2.sales)
    FROM sales s2
    WHERE s2.product = s.product
)
ORDER BY s.sales DESC;


-- 9. EXISTS
SELECT DISTINCT
    s.product
FROM sales s
WHERE EXISTS (
    SELECT 1
    FROM sales s2
    WHERE s2.product = s.product
);


-- 10. CASE WHEN: Categorize sales
SELECT
    order_id,
    product,
    sales,
    CASE
        WHEN sales >= 500 THEN 'High Sale'
        WHEN sales >= 200 THEN 'Medium Sale'
        ELSE 'Low Sale'
    END AS sales_level
FROM sales;


-- 11. Count orders in each sales category
SELECT
    CASE
        WHEN sales >= 500 THEN 'High Sale'
        WHEN sales >= 200 THEN 'Medium Sale'
        ELSE 'Low Sale'
    END AS sales_level,
    COUNT(*) AS total_orders
FROM sales
GROUP BY
    CASE
        WHEN sales >= 500 THEN 'High Sale'
        WHEN sales >= 200 THEN 'Medium Sale'
        ELSE 'Low Sale'
    END
ORDER BY total_orders DESC;


-- 12. Total revenue by salesperson
SELECT
    salesperson,
    SUM(sales) AS total_revenue
FROM sales
GROUP BY salesperson;


-- 13. Average sale and order count by salesperson
SELECT
    salesperson,
    AVG(sales) AS average_sale_order,
    COUNT(*) AS total_order
FROM sales
GROUP BY salesperson;
