SELECT stock_name, SUM(price) AS capital_gain_loss
FROM (SELECT stock_name, CASE WHEN operation='Buy' THEN -1*price ELSE price END AS price
FROM Stocks)
GROUP BY stock_name;