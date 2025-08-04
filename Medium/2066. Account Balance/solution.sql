SELECT account_id, day, SUM(amount) OVER (PARTITION BY account_id ORDER BY day) AS balance
FROM(SELECT account_id,day,CASE WHEN type='Withdraw' THEN -1*amount ELSE amount END AS amount
FROM Transactions)
ORDER BY account_id,day