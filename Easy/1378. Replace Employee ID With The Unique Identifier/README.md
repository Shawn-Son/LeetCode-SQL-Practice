# 1378. Replace Employee ID With The Unique Identifier

**Category**: Easy  
**Platform**: LeetCode  
**Tags**: SQL, JOIN, LEFT JOIN, NULL Handling

---

## 🧾 Problem Description

### Table: Employees

| Column Name | Type    |
|-------------|---------|
| id          | int     |
| name        | varchar |

- `id` is the **primary key**.
- Each row contains the ID and name of an employee.

---

### Table: EmployeeUNI

| Column Name | Type    |
|-------------|---------|
| id          | int     |
| unique_id   | int     |

- `(id, unique_id)` is the **composite primary key**.
- Each row maps an employee's `id` to a `unique_id`.

---

## 🎯 Goal

> Return the `unique_id` and `name` of each employee.
> If a user does not have a unique ID, return `null` in its place.

- The result can be returned in **any order**.

---

## ✅ Explanation

- A **LEFT JOIN** is used because not all employees have a `unique_id`, but we still need to show their names.
- We join `Employees.id` with `EmployeeUNI.id`.
- Any unmatched rows from `EmployeeUNI` will result in `NULL` for `unique_id`, which matches the problem requirement.
- Selecting `unique_id` first then `name` as per output format.
