# 1350. Students With Invalid Departments

## Problem Description

You are given two tables: `Departments` and `Students`.

- The `Departments` table contains department IDs and names.
- The `Students` table contains student IDs, names, and the department ID each student belongs to.

Write a solution to **find all students who are enrolled in departments that do not exist** in the `Departments` table.

Return the result table with the following columns:
- `id` (student ID)
- `name` (student name)

Return the result in any order.

---

## Example

### Input

**Departments table:**

| id  | name                     |
|-----|--------------------------|
| 1   | Electrical Engineering   |
| 7   | Computer Engineering     |
| 13  | Bussiness Administration |

**Students table:**

| id  | name      | department_id |
|-----|-----------|---------------|
| 23  | Alice     | 1             |
| 1   | Bob       | 7             |
| 5   | Jennifer  | 13            |
| 2   | John      | 14            |
| 4   | Jasmine   | 77            |
| 3   | Steve     | 74            |
| 6   | Luis      | 1             |
| 8   | Jonathan  | 7             |
| 7   | Daiana    | 33            |
| 11  | Madelynn  | 1             |

---

### Output

| id  | name    |
|-----|---------|
| 2   | John    |
| 7   | Daiana  |
| 4   | Jasmine |
| 3   | Steve   |

---

### Explanation

- John, Daiana, Steve, and Jasmine are enrolled in departments (14, 33, 74, 77) that do **not** exist in the Departments table.

---