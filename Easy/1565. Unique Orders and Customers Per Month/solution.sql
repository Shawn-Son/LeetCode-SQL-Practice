SELECT TO_CHAR(order_date, 'YYYY-MM') AS month, COUNT(*) AS order_count, COUNT(DISTINCT customer_id) AS customer_count
FROM Orders
WHERE invoice>20
GROUP BY TO_CHAR(order_date, 'YYYY-MM');