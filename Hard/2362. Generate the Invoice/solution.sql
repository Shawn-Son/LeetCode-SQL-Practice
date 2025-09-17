-- Write your PostgreSQL query statement below
with invoice_with_rank AS (SELECT pu.invoice_id, SUM(pu.quantity*pr.price) AS prcie_per_invoice, RANK() OVER (ORDER BY SUM(pu.quantity*pr.price) DESC) rnk_total, RANK() OVER (PARTITION BY SUM(pu.quantity*pr.price) ORDER BY invoice_id) AS rnk_invoice
FROM Purchases pu
JOIN Products pr
ON pu.product_id = pr.product_id
GROUP BY pu.invoice_id)

SELECT pu.product_id, pu.quantity, pr.price*pu.quantity AS price
FROM Purchases pu
JOIN Products pr
ON pu.product_id = pr.product_id
JOIN (SELECT invoice_id FROM invoice_with_rank WHERE rnk_total=1 AND rnk_invoice=1) inv
ON pu.invoice_id = inv.invoice_id