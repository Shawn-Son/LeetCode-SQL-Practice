WITH ranking AS (
    SELECT name, salary, departmentId,
    DENSE_RANK() OVER (PARTITION BY departmentId ORDER BY salary DESC) AS rank
    FROM Employee
)
SELECT d.name AS Department, r.name AS Employee, r.salary AS Salary
FROM ranking r
JOIN Department d
ON r.departmentId=d.id
WHERE r.rank<=3;
