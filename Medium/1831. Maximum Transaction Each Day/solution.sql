SELECT transaction_id
FROM (SELECT transaction_id, DATE(day) AS date, amount, RANK() OVER (PARTITION BY DATE(day) ORDER BY amount DESC) AS rnk
FROM Transactions)
WHERE rnk=1
ORDER BY transaction_id;    