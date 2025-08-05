-- Write your PostgreSQL query statement below
WITH winners AS (
    SELECT winner, COUNT(winner) AS grand_slams_count
    FROM (SELECT Wimbledon AS winner
        FROM Championships
        UNION ALL
        SELECT Fr_open AS winner
        FROM Championships
        UNION ALL
        SELECT US_open AS winner
        FROM Championships
        UNION ALL
        SELECT AU_open AS winner
        FROM Championships
        )
    GROUP BY winner
)

SELECT p.player_id, p.player_name, w.grand_slams_count
FROM Players p
JOIN winners w
ON p.player_id=w.winner;