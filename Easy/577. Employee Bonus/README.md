# 577. Employee Bonus

**Category**: Easy  
**Platform**: LeetCode  
**Tags**: SQL, JOIN, Filtering, NULL handling

---

## 🧾 Problem Description

You are given two tables:

### `Employee`

| Column Name | Type    |
|-------------|---------|
| empId       | int     |
| name        | varchar |
| supervisor  | int     |
| salary      | int     |

- `empId` is the **primary key**.
- Each row represents an employee's details including their manager (supervisor).

---

### `Bonus`

| Column Name | Type |
|-------------|------|
| empId       | int  |
| bonus       | int  |

- `empId` is a **foreign key** referencing `Employee.empId`.
- Each row contains the bonus an employee receives.  
- Not every employee is guaranteed to have a bonus record (some may be missing).

---

## 🎯 Objective

Write a query to return the `name` and `bonus` of employees whose **bonus is less than 1000**  
(including those who **don't have a bonus entry**, i.e. NULL).

---

## 🧠 Logic

- Use a `LEFT JOIN` from `Employee` to `Bonus` to include all employees, even those without a bonus.
- Use `COALESCE(bonus, 0) < 1000` to:
  - Include employees with `bonus < 1000`
  - Include employees with `NULL` bonus (treated as 0)
- Return the `name` and original `bonus` (which could be NULL).

---

## ✅ Example

### Input:

**Employee**

| empId | name   | supervisor | salary |
|-------|--------|------------|--------|
| 3     | Brad   | null       | 4000   |
| 1     | John   | 3          | 1000   |
| 2     | Dan    | 3          | 2000   |
| 4     | Thomas | 3          | 4000   |

**Bonus**

| empId | bonus |
|-------|-------|
| 2     | 500   |
| 4     | 2000  |

---

### Output:

| name  | bonus |
|--------|--------|
| Brad  | NULL  |
| John  | NULL  |
| Dan   | 500   |

---

## 🧾 Explanation

- Dan has bonus 500 → included
- Brad and John have no bonus → included (NULL < 1000 is handled using COALESCE)
- Thomas has bonus 2000 → not included

---
