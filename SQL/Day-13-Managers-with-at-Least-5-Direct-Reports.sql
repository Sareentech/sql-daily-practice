-- Day 12: Managers with at Least 5 Direct Reports

SELECT 
    e.name
FROM Employee e
JOIN Employee m
    ON e.id = m.managerId
GROUP BY e.id, e.name
HAVING COUNT(m.id) >= 5;