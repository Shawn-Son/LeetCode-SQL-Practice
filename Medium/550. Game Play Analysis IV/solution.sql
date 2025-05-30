SELECT ROUND((SUM(CASE WHEN count=1 THEN 1 ELSE 0 END))*1.0/COUNT(*),2) AS fraction
FROM (
    SELECT a1.player_id, COUNT(a2.first_date) AS count
FROM Activity a1
LEFT JOIN (
    SELECT player_id, MIN(event_date) AS first_date
    FROM Activity
    GROUP BY player_id
) a2
ON a1.player_id = a2.player_id AND a1.event_date = a2.first_date + INTERVAL'1 day'
GROUP BY a1.player_id
);
