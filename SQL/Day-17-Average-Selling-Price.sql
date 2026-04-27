/*
-------------------------------------------------------
Day 17: Average Selling Price
-------------------------------------------------------

Problem:
You are given two tables:

1. Prices
- product_id (int)
- start_date (date)
- end_date (date)
- price (int)

2. UnitsSold
- product_id (int)
- purchase_date (date)
- units (int)

Task:
Find the average selling price for each product.

Rules:
- The price of a product depends on the date range 
  (start_date to end_date)
- Match UnitsSold.purchase_date with Prices date range
- Average Selling Price = 
  (total price * units sold) / total units sold
- Round result to 2 decimal places

-------------------------------------------------------

Approach:
1. Join Prices and UnitsSold using:
   - product_id
   - purchase_date BETWEEN start_date AND end_date

2. Multiply price * units to get total revenue

3. Divide by total units

4. Use GROUP BY product_id

5. Use ROUND() for formatting

-------------------------------------------------------
*/

SELECT 
    p.product_id,
    ROUND(SUM(p.price * u.units) / SUM(u.units), 2) AS average_price
FROM Prices p
JOIN UnitsSold u
    ON p.product_id = u.product_id
   AND u.purchase_date BETWEEN p.start_date AND p.end_date
GROUP BY p.product_id;

/*
-------------------------------------------------------
Example:

Prices:
+------------+------------+------------+-------+
| product_id | start_date | end_date   | price |
+------------+------------+------------+-------+
| 1          | 2019-02-17 | 2019-02-28 | 5     |
| 1          | 2019-03-01 | 2019-03-22 | 20    |
| 2          | 2019-02-01 | 2019-02-20 | 15    |
| 2          | 2019-02-21 | 2019-03-31 | 30    |
+------------+------------+------------+-------+

UnitsSold:
+------------+---------------+-------+
| product_id | purchase_date | units |
+------------+---------------+-------+
| 1          | 2019-02-25    | 100   |
| 1          | 2019-03-01    | 15    |
| 2          | 2019-02-10    | 200   |
| 2          | 2019-03-22    | 30    |
+------------+---------------+-------+

Output:
+------------+---------------+
| product_id | average_price |
+------------+---------------+
| 1          | 6.96          |
| 2          | 16.96         |
+------------+---------------+

-------------------------------------------------------
*/