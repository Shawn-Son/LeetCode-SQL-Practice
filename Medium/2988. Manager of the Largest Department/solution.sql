WITH num AS (SELECT dep_id, COUNT(*), RANK() OVER(ORDER BY COUNT(*) DESC) AS rnk
FROM Employees
GROUP BY dep_id)

SELECT e.emp_name AS manager_name, e.dep_id
FROM Employees e
JOIN num n
ON e.dep_id=n.dep_id
WHERE n.rnk=1 AND e.position='Manager'
ORDER BY dep_id;