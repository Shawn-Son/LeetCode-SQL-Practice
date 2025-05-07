SELECT contest_id, percentage
FROM(
    SELECT contest_id, 
ROUND(COUNT(DISTINCT(user_id))*100.0/(SELECT COUNT(*) AS total_count FROM Users),2) AS percentage
FROM Register r
GROUP BY contest_id
)
ORDER BY percentage DESC, contest_id ASC;