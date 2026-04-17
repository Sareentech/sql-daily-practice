-- Day 9: Product Sales Analysis

-- Day 9: Product Sales Analysis

-- Business Insight:
-- Identifying top-performing products based on revenue helps in
-- inventory planning, marketing focus, and sales strategy.

SELECT 
    p.product_name,
    SUM(s.price) AS total_revenue
FROM Sales s
JOIN Product p
    ON s.product_id = p.product_id
GROUP BY 
    p.product_name
ORDER BY 
    total_revenue DESC;