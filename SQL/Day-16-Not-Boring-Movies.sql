/*
-------------------------------------------------------
Day 16: Not Boring Movies
-------------------------------------------------------

Problem:
You are given a table 'Cinema' with the following columns:
- id (int): unique ID of the movie
- movie (varchar): name of the movie
- description (varchar): type of movie
- rating (float): rating of the movie

Task:
1. Select only movies with odd-numbered IDs
2. Exclude movies where description = 'boring'
3. Sort the result by rating in descending order

Approach:
- Use modulus operator (%) to filter odd IDs
- Use NOT EQUAL condition to remove 'boring' movies
- Use ORDER BY to sort by rating (highest first)

-------------------------------------------------------
*/

SELECT id, movie, description, rating
FROM Cinema
WHERE id % 2 = 1              -- keeps only odd IDs
  AND description <> 'boring' -- removes boring movies
ORDER BY rating DESC;         -- sorts by highest rating

/*
-------------------------------------------------------
Example:

Input:
+----+----------------+-------------+--------+
| id | movie          | description | rating |
+----+----------------+-------------+--------+
| 1  | War            | great       | 8.9    |
| 2  | Science        | boring      | 5.4    |
| 3  | Fiction        | interesting | 9.1    |
| 4  | Documentary    | boring      | 6.0    |
| 5  | Action         | great       | 8.5    |
+----+----------------+-------------+--------+

Output:
+----+----------------+-------------+--------+
| id | movie          | description | rating |
+----+----------------+-------------+--------+
| 3  | Fiction        | interesting | 9.1    |
| 1  | War            | great       | 8.9    |
| 5  | Action         | great       | 8.5    |
+----+----------------+-------------+--------+

-------------------------------------------------------
*/