SELECT *
FROM Orders
WHERE order_type=0 OR customer_id NOT IN (SELECT customer_id FROM Orders WHERE order_type=0)