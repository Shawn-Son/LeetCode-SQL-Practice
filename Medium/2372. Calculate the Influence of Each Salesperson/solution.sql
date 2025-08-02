SELECT s.salesperson_id, s.name, COALESCE(SUM(price),0) AS total
FROM Salesperson s
LEFT JOIN Customer c
ON s.salesperson_id = c.salesperson_id
LEFT JOIN Sales sal
ON c.customer_id = sal.customer_id
GROUP BY s.salesperson_id, s.name;