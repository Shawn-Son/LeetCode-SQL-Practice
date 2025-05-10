# 570. Managers with at Least 5 Direct Reports

**Category**: Medium  
**Platform**: LeetCode  
**Tags**: SQL, Self-Join, Aggregation, Filtering  

---

## 🧾 Problem Description

### Table: `Employee`

| Column Name | Type    |
|-------------|---------|
| id          | int     |
| name        | varchar |
| department  | varchar |
| managerId   | int     |

- `id` is the **primary key** (each employee has a unique ID).
- Each row represents an employee, their department, and their manager.
- If `managerId` is `NULL`, the employee **does not have a manager**.
- No employee is their own manager.

---

## 🎯 Objective

Write an SQL query to find all **managers** who have **at least 5 direct reports** (employees who list them as their `managerId`).

- Return the manager's `name` only.
- The result can be in any order.

---

## ✅ Example

### Input

**Employee**

| id  | name  | department | managerId |
|-----|-------|------------|-----------|
| 101 | John  | A          | null      |
| 102 | Dan   | A          | 101       |
| 103 | James | A          | 101       |
| 104 | Amy   | A          | 101       |
| 105 | Anne  | A          | 101       |
| 106 | Ron   | B          | 101       |

### Output

| name |
|------|
| John |

---

## 🔍 Explanation

- Employee `101` (John) is the manager of employees `102`, `103`, `104`, `105`, and `106`.
- John has **5 direct reports**, so he qualifies for the result.
- No other employee has 5 or more direct reports.