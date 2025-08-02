# Employee Reporting Hierarchy Query

## Problem Description

Given a table `Employees` with the following columns:

| Column Name     | Type    |
|-----------------|---------|
| employee_id     | int     |
| employee_name   | varchar |
| manager_id      | int     |

- Each employee has a unique `employee_id`.
- `manager_id` refers to the employee's direct manager by their `employee_id`.

Write a query to find all employees who report (directly or indirectly) to employee with `employee_id = 1` **at the third managerial level** (i.e., the employee's manager's manager's manager is employee 1).  
Exclude employee 1 from the result.

---

## Example

Suppose the table is as follows:

| employee_id | employee_name | manager_id |
|-------------|--------------|------------|
| 1           | Alice        | null       |
| 2           | Bob          | 1          |
| 3           | Charlie      | 2          |
| 4           | David        | 3          |
| 5           | Emma         | 2          |
| 6           | Frank        | 5          |

Employees reporting three levels up to Alice (`employee_id = 1`) are David (`employee_id = 4`) and Frank (`employee_id = 6`).

