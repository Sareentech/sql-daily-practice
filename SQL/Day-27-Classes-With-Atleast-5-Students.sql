Day 27 LeetCode SQL Solution
Problem: Classes With at Least 5 Students

SELECT class
FROM Courses
GROUP BY class
HAVING COUNT(DISTINCT student) >= 5;