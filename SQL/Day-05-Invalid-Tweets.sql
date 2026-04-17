-- Day 5: SQL Practice - Invalid Tweets

-- Problem:
-- Write a query to find the IDs of tweets that are invalid.
-- A tweet is considered invalid if the number of characters used in the content is strictly greater than 15.

-- Solution:

SELECT tweet_id
FROM Tweets
WHERE LENGTH(content) > 15;