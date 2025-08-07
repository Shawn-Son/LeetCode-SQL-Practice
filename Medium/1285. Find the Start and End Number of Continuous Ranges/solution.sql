SELECT MIN(log_id) AS start_id, MAX(log_id) AS end_id
FROM (SELECT log_id, log_id - ROW_NUMBER() OVER (ORDER BY log_id) AS checknum
FROM Logs)
GROUP BY checknum
ORDER BY start_id;