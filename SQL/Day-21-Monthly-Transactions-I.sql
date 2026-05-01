Day 21 - Monthly Transactions I
LeetCode SQL Study Plan

Problem:
Write an SQL query to find:

1. Month of the transaction
2. Country
3. Total number of transactions
4. Number of approved transactions
5. Total transaction amount
6. Total approved transaction amount

Group the result by month and country.


SELECT
    DATE_FORMAT(trans_date, '%Y-%m') AS month,
    country,
    
    COUNT(id) AS trans_count,
    
    SUM(
        CASE
            WHEN state = 'approved' THEN 1
            ELSE 0
        END
    ) AS approved_count,
    
    SUM(amount) AS trans_total_amount,
    
    SUM(
        CASE
            WHEN state = 'approved' THEN amount
            ELSE 0
        END
    ) AS approved_total_amount

FROM Transactions

GROUP BY month, country;