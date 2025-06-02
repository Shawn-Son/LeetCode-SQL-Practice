WITH new_log AS(
    SELECT id, num, LEAD(num) OVER (ORDER BY id) AS next1, LEAD(num,2) OVER (ORDER BY id) AS next2
    FROM Logs    
)    
SELECT DISTINCT(num) AS ConsecutiveNums
FROM new_log
WHERE num=next1 AND num=next2;
