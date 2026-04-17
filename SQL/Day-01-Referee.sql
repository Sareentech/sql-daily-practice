-- Platform: LeetCode
-- Problem: Recylable and Low Fat Products
-- Difficulty: Easy
-- Concept: Filtering

SELECT product_id
FROM Products
WHERE low_fats='Y' AND recyclable='Y';