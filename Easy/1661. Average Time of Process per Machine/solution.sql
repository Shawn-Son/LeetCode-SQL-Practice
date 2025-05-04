SELECT machine_id, ROUND(CAST(AVG(pro.time) AS NUMERIC),3) AS processing_time
FROM (
    SELECT machine_id, process_id, MAX(timestamp)-MIN(timestamp) AS time
    FROM Activity
    GROUP BY machine_id, process_id
) AS pro
GROUP BY machine_id;