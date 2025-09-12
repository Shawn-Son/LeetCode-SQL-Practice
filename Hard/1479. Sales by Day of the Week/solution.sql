-- Write your PostgreSQL query statement below
SELECT i.item_category AS "Category",
COALESCE(SUM(quantity) FILTER (WHERE EXTRACT(DOW FROM o.order_date) = 1),0) AS "Monday",
COALESCE(SUM(quantity) FILTER (WHERE EXTRACT(DOW FROM o.order_date) = 2),0) AS "Tuesday",
COALESCE(SUM(quantity) FILTER (WHERE EXTRACT(DOW FROM o.order_date) = 3),0) AS "Wednesday",
COALESCE(SUM(quantity) FILTER (WHERE EXTRACT(DOW FROM o.order_date) = 4),0) AS "Thursday",
COALESCE(SUM(quantity) FILTER (WHERE EXTRACT(DOW FROM o.order_date) = 5),0) AS "Friday",
COALESCE(SUM(quantity) FILTER (WHERE EXTRACT(DOW FROM o.order_date) = 6),0) AS "Saturday",
COALESCE(SUM(quantity) FILTER (WHERE EXTRACT(DOW FROM o.order_date) = 0),0) AS "Sunday"
FROM Items i
LEFT JOIN Orders o 
ON i.item_id = o.item_id
GROUP BY i.item_category
ORDER BY i.item_category