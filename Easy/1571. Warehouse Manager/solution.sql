SELECT w.name AS warehouse_name, SUM(w.units*p.product_volume) AS volume
FROM Warehouse w
JOIN (SELECT product_id, Width*Length*Height AS product_volume FROM Products) p
ON w.product_id=p.product_id
GROUP BY w.name;