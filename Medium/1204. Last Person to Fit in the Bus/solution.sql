SELECT person_name
FROM (SELECT turn,person_name,weight, SUM(weight) OVER (ORDER BY turn) AS total_weight
FROM Queue
ORDER BY turn)
WHERE total_weight<=1000
ORDER BY turn DESC
LIMIT 1;
