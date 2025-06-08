SELECT p1.product_id, p1.new_price AS price
FROM Products p1
JOIN (SELECT product_id, MAX(change_date) AS result_date
FROM Products
WHERE change_date<='2019-08-16'
GROUP BY product_id
) p2
ON p1.product_id=p2.product_id
WHERE p1.change_date=p2.result_date
UNION
SELECT product_id, 10 AS price
FROM Products
GROUP BY product_id
HAVING MIN(change_date)>'2019-08-16'