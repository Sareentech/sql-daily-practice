LeetCode Day 24
Problem: Number of Unique Subjects Taught by Each Teacher
Difficulty: Easy

Solution

SELECT
    teacher_id,
    COUNT(DISTINCT subject_id) AS cnt
FROM Teacher
GROUP BY teacher_id;