-- Calculate average processing time per machine

SELECT 
    a1.machine_id,
    
    -- Average time difference between start and end
    ROUND(AVG(a2.timestamp - a1.timestamp), 3) AS processing_time

FROM Activity a1

-- Join start and end records of the same process
JOIN Activity a2
    ON a1.machine_id = a2.machine_id
   AND a1.process_id = a2.process_id

-- Filter for start and end activities
WHERE a1.activity_type = 'start'
  AND a2.activity_type = 'end'

-- Group by machine
GROUP BY a1.machine_id;