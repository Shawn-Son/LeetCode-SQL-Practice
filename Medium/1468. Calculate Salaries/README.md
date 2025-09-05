# LeetCode 1468. Calculate Salaries

## Problem Statement

You are given a table `Salaries`:

### Salaries
| Column Name   | Type    |
|---------------|---------|
| company_id    | int     |
| employee_id   | int     |
| employee_name | varchar |
| salary        | int     |

- `(company_id, employee_id)` is the primary key.
- Each row contains the company ID, employee ID, name, and salary.

---

## Task

Find the **salaries of employees after applying taxes**, rounded to the nearest integer.  
The tax rate depends on the **maximum salary** in the company:

- **0%** tax if the max salary in the company is `< 1000`.
- **24%** tax if the max salary is between `[1000, 10000]` inclusive.
- **49%** tax if the max salary is `> 10000`.

---

## Example

### Input
**Salaries table:**

| company_id | employee_id | employee_name | salary |
|------------|-------------|---------------|--------|
| 1          | 1           | Tony          | 2000   |
| 1          | 2           | Pronub        | 21300  |
| 1          | 3           | Tyrrox        | 10800  |
| 2          | 1           | Pam           | 300    |
| 2          | 7           | Bassem        | 450    |
| 2          | 9           | Hermione      | 700    |
| 3          | 7           | Bocaben       | 100    |
| 3          | 2           | Ognjen        | 2200   |
| 3          | 13          | Nyancat       | 3300   |
| 3          | 15          | Morninngcat   | 7777   |

### Output
| company_id | employee_id | employee_name | salary |
|------------|-------------|---------------|--------|
| 1          | 1           | Tony          | 1020   |
| 1          | 2           | Pronub        | 10863  |
| 1          | 3           | Tyrrox        | 5508   |
| 2          | 1           | Pam           | 300    |
| 2          | 7           | Bassem        | 450    |
| 2          | 9           | Hermione      | 700    |
| 3          | 7           | Bocaben       | 76     |
| 3          | 2           | Ognjen        | 1672   |
| 3          | 13          | Nyancat       | 2508   |
| 3          | 15          | Morninngcat   | 5911   |

**Explanation:**
- Company 1 has max salary = 21300 → tax = 49%.
- Company 2 has max salary = 700 → tax = 0%.
- Company 3 has max salary = 7777 → tax = 24%.
- Salaries are adjusted accordingly.

---