-- Write your PostgreSQL query statement below
WITH RANKING AS (SELECT s.user_id, s.product_id, RANK() OVER (PARTITION BY user_id ORDER BY SUM(s.quantity*p.price) DESC) AS rnk
FROM Sales s
JOIN Product p
ON s.product_id = p.product_id
GROUP BY s.user_id, s.product_id)

SELECT user_id, product_id
FROM RANKING
WHERE rnk = 1;
