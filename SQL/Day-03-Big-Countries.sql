-- Day 3: Big Countries
-- Platform: LeetCode
-- Link: https://leetcode.com/problems/big-countries/

-- Approach:
-- Select countries with area >= 3,000,000 OR population >= 25,000,000

SELECT name, population, area
FROM World
WHERE area >= 3000000 OR population >= 25000000;