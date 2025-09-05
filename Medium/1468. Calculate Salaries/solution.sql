-- Write your PostgreSQL query statement below
SELECT s.company_id, s.employee_id, s.employee_name, CASE WHEN m.max_salary < 1000 THEN salary WHEN m.max_salary >10000 THEN ROUND(s.salary*0.51,0) ELSE ROUND(s.salary*0.76,0) END AS salary
FROM Salaries s
JOIN (SELECT company_id, MAX(salary) as max_salary
FROM Salaries
GROUP BY company_id) m
ON s.company_id = m.company_id;