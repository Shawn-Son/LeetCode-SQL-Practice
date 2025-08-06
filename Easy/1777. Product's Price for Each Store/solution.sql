SELECT product_id, MAX(price) FILTER (WHERE store='store1') AS store1, MAX(price) FILTER (WHERE store='store2') AS store2, MAX(price) FILTER (WHERE store='store3') AS store3
FROM Products
GROUP BY product_id;