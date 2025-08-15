SELECT CAST(TO_CHAR(purchase_date,'dd') AS integer)/7+1 AS week_of_month, purchase_date, SUM(amount_spend) AS total_amount
FROM Purchases
WHERE TO_CHAR(purchase_date, 'FMday') = 'friday'
GROUP BY purchase_date
ORDER BY week_of_month;