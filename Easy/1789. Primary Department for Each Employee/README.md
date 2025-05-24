# 1789. Primary Department for Each Employee

**Difficulty**: Easy  
**Topics**: SQL, Filtering, Grouping, Conditional Logic

---

## 🧠 Problem Summary

You are given an `Employee` table with data on employee-to-department assignments. Each employee can belong to multiple departments, and a flag (`primary_flag`) indicates which department is the **primary** one for that employee.

- If the employee belongs to **multiple departments**, one of them will be marked as **`primary_flag = 'Y'`**.
- If the employee belongs to **only one department**, the `primary_flag` will be **`'N'`**, but that department should still be treated as their **primary** department.

---

## 📘 Table Structure

### `Employee`

| Column Name   | Type    | Description                                |
|---------------|---------|--------------------------------------------|
| `employee_id` | int     | ID of the employee                         |
| `department_id` | int   | ID of the department                       |
| `primary_flag` | varchar (ENUM `'Y'` or `'N'`) | Whether this is the primary department |

- `(employee_id, department_id)` is the **primary key**.
- An employee may appear multiple times (in different departments).

---

## ✅ Objective

Write an SQL query to return each employee and their corresponding primary department.

- If an employee has multiple departments, select the one with `primary_flag = 'Y'`.
- If an employee has only one department, return that department regardless of the flag value (it will be `'N'`).

---

## 🧾 Example

### Input

#### `Employee` Table

| employee_id | department_id | primary_flag |
|-------------|----------------|--------------|
| 1           | 1              | N            |
| 2           | 1              | Y            |
| 2           | 2              | N            |
| 3           | 3              | N            |
| 4           | 2              | N            |
| 4           | 3              | Y            |
| 4           | 4              | N            |

### Output

| employee_id | department_id |
|-------------|----------------|
| 1           | 1              |
| 2           | 1              |
| 3           | 3              |
| 4           | 3              |

---

## ✅ Solution

```sql
SELECT employee_id, department_id
FROM Employee
WHERE primary_flag = 'Y'

UNION

SELECT employee_id, department_id
FROM Employee
GROUP BY employee_id, department_id
HAVING COUNT(*) = 1;