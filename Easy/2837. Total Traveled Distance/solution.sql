-- Write your PostgreSQL query statement below
SELECT u.user_id, u.name, COALESCE(sum_distance,0) AS "traveled distance"
FROM Users u
LEFT JOIN (SELECT user_id, SUM(distance) AS sum_distance
FROM Rides
GROUP BY user_id) r
ON u.user_id = r.user_id
ORDER BY u.user_id;