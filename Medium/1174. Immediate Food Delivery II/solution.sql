WITH first_order AS (
    SELECT customer_id, MIN(order_date) AS order_date
    FROM Delivery
    GROUP BY customer_id
)

SELECT ROUND(SUM(CASE WHEN d.order_date=d.customer_pref_delivery_date THEN 1 ELSE 0 END)*100.0/COUNT(*),2) AS immediate_percentage
FROM Delivery d
JOIN first_order f
ON d.order_date=f.order_date AND d.customer_id=f.customer_id;