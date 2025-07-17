SELECT emp_id, dept
FROM (SELECT emp_id, DENSE_RANK() OVER (PARTITION BY dept ORDER BY salary DESC) AS rnk, dept
FROM employees)
WHERE rnk=2
ORDER BY emp_id;