Day 19: Percentage of Users Attended a Contest


Task:
Find the percentage of users registered in each contest.

Requirements:
- Display contest_id and percentage
- Percentage should be rounded to 2 decimal places
- Sort by percentage in descending order
- If percentages are equal, sort by contest_id ascending

Approach:
- Count total users from Users table
- Count registered users for each contest
- Calculate percentage using:
  
  (registered users / total users) * 100

- Use ROUND() for formatting
- Use GROUP BY for each contest



SELECT 
    r.contest_id,
    ROUND(COUNT(r.user_id) * 100.0 / 
    (SELECT COUNT(*) FROM Users), 2) AS percentage
FROM Register r
GROUP BY r.contest_id
ORDER BY percentage DESC, r.contest_id ASC;