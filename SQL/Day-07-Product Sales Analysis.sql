-- Day 7: Product Sales Analysis
-- Platform: LeetCode

-- Problem:
-- Write a query to report product name, year, and price.

-- Tables:
-- Sales(product_id, year, price)
-- Product(product_id, product_name)

-- Solution:
SELECT 
    p.product_name,
    s.year,
    s.price
FROM Sales s
JOIN Product p
ON s.product_id = p.product_id;