Day 18: Project Employees I

Task:
Find the average experience years of employees 
for each project.

Approach:
- Join Project and Employee tables using employee_id
- Use AVG() to calculate average experience
- Group by project_id
- Round result to 2 decimal places



SELECT 
    p.project_id,
    ROUND(AVG(e.experience_years), 2) AS average_years
FROM Project p
JOIN Employee e
    ON p.employee_id = e.employee_id
GROUP BY p.project_id;