 Day 20 - SQL Practice
 Topic: Quality Analysis & Percentage Calculations
 Author: Your Name
 
1. Total number of records
SELECT COUNT(*) AS total_records
FROM sales_data;


2. Total revenue
SELECT SUM(sales) AS total_revenue
FROM sales_data;


3. Average sales per order
SELECT AVG(sales) AS avg_sales
FROM sales_data;


4. Total profit
SELECT SUM(profit) AS total_profit
FROM sales_data;


5. Profit percentage
SELECT 
    SUM(profit) * 100.0 / SUM(sales) AS profit_percentage
FROM sales_data;


6. Category-wise revenue
SELECT category, SUM(sales) AS total_sales
FROM sales_data
GROUP BY category;


7. Category-wise profit percentage
SELECT 
    category,
    SUM(profit) * 100.0 / SUM(sales) AS profit_percentage
FROM sales_data
GROUP BY category;


8. Region-wise sales contribution (%)
SELECT 
    region,
    SUM(sales) * 100.0 / (SELECT SUM(sales) FROM sales_data) AS sales_percentage
FROM sales_data
GROUP BY region;


9. Top 5 products by sales
SELECT product_name, SUM(sales) AS total_sales
FROM sales_data
GROUP BY product_name
ORDER BY total_sales DESC
LIMIT 5;


10. Bottom 5 products by profit
SELECT product_name, SUM(profit) AS total_profit
FROM sales_data
GROUP BY product_name
ORDER BY total_profit ASC
LIMIT 5;


11. Orders with profit greater than average
SELECT *
FROM sales_data
WHERE profit > (SELECT AVG(profit) FROM sales_data);


12. Percentage of orders with discount
SELECT 
    COUNT(CASE WHEN discount > 0 THEN 1 END) * 100.0 / COUNT(*) AS discount_percentage
FROM sales_data;


13. Average discount per category
SELECT category, AVG(discount) AS avg_discount
FROM sales_data
GROUP BY category;


14. Monthly sales trend
SELECT 
    DATE_FORMAT(order_date, '%Y-%m') AS month,
    SUM(sales) AS monthly_sales
FROM sales_data
GROUP BY month
ORDER BY month;


15. Customer contribution (%)
SELECT 
    customer_id,
    SUM(sales) * 100.0 / (SELECT SUM(sales) FROM sales_data) AS contribution_percentage
FROM sales_data
GROUP BY customer_id
ORDER BY contribution_percentage DESC;


16. Highest profit margin product
SELECT 
    product_name,
    SUM(profit) / SUM(sales) AS profit_margin
FROM sales_data
GROUP BY product_name
ORDER BY profit_margin DESC
LIMIT 1;


17. Region with highest sales
SELECT region, SUM(sales) AS total_sales
FROM sales_data
GROUP BY region
ORDER BY total_sales DESC
LIMIT 1;


18. Category contribution to total profit
SELECT 
    category,
    SUM(profit) * 100.0 / (SELECT SUM(profit) FROM sales_data) AS profit_contribution
FROM sales_data
GROUP BY category;


19. Orders with negative profit
SELECT *
FROM sales_data
WHERE profit < 0;


20. Profit trend by month
SELECT 
    DATE_FORMAT(order_date, '%Y-%m') AS month,
    SUM(profit) AS total_profit
FROM sales_data
GROUP BY month
ORDER BY month;