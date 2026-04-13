-- Day 6: Replace Employee ID With Unique Identifier
-- Platform: LeetCode
-- Difficulty: Easy

-- Problem:
-- Write a solution to show the unique ID of each user.
-- If a user does not have a unique ID, show null.

-- Tables:
-- Employees(id, name)
-- EmployeeUNI(id, unique_id)

-- Solution:
SELECT 
    eu.unique_id,
    e.name
FROM Employees e
LEFT JOIN EmployeeUNI eu
ON e.id = eu.id;