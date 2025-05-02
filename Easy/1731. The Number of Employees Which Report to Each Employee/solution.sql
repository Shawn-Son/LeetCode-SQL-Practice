SELECT e.employee_id, e.name, COUNT(*) AS reports_count, ROUND(AVG(t.age)*1.0) AS average_age
FROM Employees e
JOIN Employees t
ON e.employee_id = t.reports_to
WHERE t.reports_to IS NOT NULL
GROUP BY e.employee_id, e.name
ORDER BY employee_id;