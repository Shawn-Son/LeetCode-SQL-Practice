# 1731. The Number of Employees Which Report to Each Employee

**Category**: Easy  
**Platform**: LeetCode  
**Tags**: SQL, Self Join, Aggregation, Grouping, ROUND

---

## 🧾 Problem Description

### Table: `Employees`

| Column Name  | Type    |
|--------------|---------|
| employee_id  | int     |
| name         | varchar |
| reports_to   | int     |
| age          | int     |

- `employee_id` is the **primary key**.
- `reports_to` refers to the `employee_id` of that employee's direct manager.
- Some employees have `reports_to` set to **null**, meaning they don’t report to anyone.

---

## 🎯 Objective

Find all employees who are **managers**, i.e., at least one employee reports to them.  
Return:
- their `employee_id`
- `name`
- `reports_count`: number of direct reports
- `average_age`: average age of direct reports, **rounded to the nearest integer**

Return results ordered by `employee_id`.

---

## ✅ Example 1

### Input:

**Employees**

| employee_id | name    | reports_to | age |
|-------------|---------|------------|-----|
| 9           | Hercy   | null       | 43  |
| 6           | Alice   | 9          | 41  |
| 4           | Bob     | 9          | 36  |
| 2           | Winston | null       | 37  |

### Output:

| employee_id | name  | reports_count | average_age |
|-------------|-------|----------------|-------------|
| 9           | Hercy | 2              | 39          |

---

## ✅ Example 2

### Input:

| employee_id | name    | reports_to | age |
|-------------|---------|------------|-----|
| 1           | Michael | null       | 45  |
| 2           | Alice   | 1          | 38  |
| 3           | Bob     | 1          | 42  |
| 4           | Charlie | 2          | 34  |
| 5           | David   | 2          | 40  |
| 6           | Eve     | 3          | 37  |
| 7           | Frank   | null       | 50  |
| 8           | Grace   | null       | 48  |

### Output:

| employee_id | name    | reports_count | average_age |
|-------------|---------|----------------|-------------|
| 1           | Michael | 2              | 40          |
| 2           | Alice   | 2              | 37          |
| 3           | Bob     | 1              | 37          |

---
