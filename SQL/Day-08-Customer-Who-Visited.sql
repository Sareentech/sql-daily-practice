Day 8: Customer Who Visited but Did Not Make Any Transaction
Platform: LeetCode

Problem:
Write a query to find customers who visited but did not make any transactions,
and count the number of such visits per customer.

Tables:
Visits(visit_id, customer_id)
Transactions(transaction_id, visit_id)

Solution:
SELECT 
    v.customer_id,
    COUNT(*) AS count_no_trans
FROM Visits v
LEFT JOIN Transactions t
ON v.visit_id = t.visit_id
WHERE t.transaction_id IS NULL
GROUP BY v.customer_id;