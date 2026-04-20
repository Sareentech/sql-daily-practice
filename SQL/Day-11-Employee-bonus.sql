-- Day 11: Employee Bonus
-- Platform: LeetCode
-- Link: https://leetcode.com/problems/employee-bonus/

-- Approach:
-- Use LEFT JOIN to include all employees
-- Filter employees whose bonus is less than 1000 OR bonus is NULL

SELECT 
    e.name,
    b.bonus
FROM Employee e
LEFT JOIN Bonus b
ON e.empId = b.empId
WHERE b.bonus < 1000 OR b.bonus IS NULL;