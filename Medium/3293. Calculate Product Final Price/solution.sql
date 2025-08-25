SELECT p.product_id, (COALESCE(100-d.discount,100) * price)*1.0/100 AS final_price, p.category
FROM Products p
LEFT JOIN Discounts d
ON p.category = d.category
ORDER BY product_id;