-- Platform: LeetCode
-- Problem: Find Customer Referee
-- Difficulty: Easy
-- Concept: Filtering

SELECT name FROM Customer 
WHERE referee_id IS NULL OR
referee_id<>2;