-- Write your PostgreSQL query statement below
WITH inner_list AS (SELECT t1.n AS N, 'Inner' AS Type
FROM Tree t1
JOIN Tree t2
ON t1.N=T2.p
WHERE t1.n=t2.p AND t1.p IS NOT NULL
GROUP BY t1.n)

SELECT t.N, CASE WHEN t.N=i.N THEN 'Inner' WHEN t.P IS NULL THEN 'Root' ELSE 'Leaf' END AS Type
FROM Tree t
LEFT JOIN inner_list i
ON t.N=i.N
ORDER BY t.N;