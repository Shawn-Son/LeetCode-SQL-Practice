WITH ordered AS (SELECT e1.employee_id,e1.employee_name,e1.manager_id AS first, e2.manager_id AS second, e3.manager_id AS third
FROM Employees e1
JOIN Employees e2
ON e1.manager_id=e2.employee_id
JOIN Employees e3
ON e2.manager_id=e3.employee_id)

SELECT employee_id
FROM ordered
WHERE employee_id!=1 AND third=1;