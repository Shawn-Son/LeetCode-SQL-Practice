# LeetCode 3338. Second Highest Salary II

## Problem Description

Given a table `employees` with each employee’s ID, salary, and department, write a query to find all employees who earn the **second-highest salary in their department**.

- If multiple employees have the second-highest salary, include all of them.
- Do **not** return anything for departments with fewer than two employees.

**Return the result table ordered by `emp_id` in ascending order.**

---

## Example

### Input

| emp_id | salary | dept      |
|--------|--------|-----------|
| 1      | 70000  | Sales     |
| 2      | 80000  | Sales     |
| 3      | 80000  | Sales     |
| 4      | 90000  | Sales     |
| 5      | 55000  | IT        |
| 6      | 65000  | IT        |
| 7      | 65000  | IT        |
| 8      | 50000  | Marketing |
| 9      | 55000  | Marketing |
| 10     | 55000  | HR        |

### Output

| emp_id | dept      |
|--------|-----------|
| 2      | Sales     |
| 3      | Sales     |
| 5      | IT        |
| 8      | Marketing |

**Explanation:**
- **Sales:** Highest salary 90000 (emp_id 4), second-highest 80000 (emp_id 2, 3)
- **IT:** Highest salary 65000 (emp_id 6, 7), second-highest 55000 (emp_id 5)
- **Marketing:** Highest salary 55000 (emp_id 9), second-highest 50000 (emp_id 8)
- **HR:** Only one employee, not included.