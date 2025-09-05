-- Write your PostgreSQL query statement below
WITH count_max AS (SELECT customer_id, product_id, COUNT(*) AS cnt, MAX(COUNT(*)) OVER (PARTITION BY customer_id) AS max_cnt
FROM Orders
GROUP BY customer_id, product_id
ORDER BY customer_id)

SELECT m.customer_id, m.product_id, p.product_name
FROM (SELECT customer_id,product_id,cnt FROM count_max WHERE cnt = max_cnt) m
JOIN Products p
ON m.product_id = p.product_id