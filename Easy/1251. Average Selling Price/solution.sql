SELECT p.product_id, ROUND(CAST(SUM(price*units) AS NUMERIC)/SUM(units),2) AS average_price
FROM Prices p
LEFT JOIN UnitsSold u
ON p.product_id=u.product_id AND purchase_date BETWEEN start_date AND end_date
GROUP BY p.product_id;