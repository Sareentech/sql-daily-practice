-- Day 4: Article Views I
-- Platform: LeetCode
-- Link: https://leetcode.com/problems/article-views-i/

-- Approach:
-- Select authors who viewed their own articles (author_id = viewer_id)
-- Use DISTINCT to remove duplicates
-- Sort the result

SELECT DISTINCT author_id AS id
FROM Views
WHERE author_id = viewer_id
ORDER BY id;