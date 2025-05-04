# 1075. Project Employees I

**Category**: Easy  
**Platform**: LeetCode  
**Tags**: SQL, JOIN, Aggregation, GROUP BY  

---

## 🧾 Problem Description

### Table: `Project`

| Column Name  | Type |
|--------------|------|
| project_id   | int  |
| employee_id  | int  |

- `(project_id, employee_id)` is the **primary key**.
- `employee_id` is a **foreign key** referencing `Employee.employee_id`.
- Each row indicates that a specific employee is working on a given project.

---

### Table: `Employee`

| Column Name       | Type    |
|-------------------|---------|
| employee_id       | int     |
| name              | varchar |
| experience_years  | int     |

- `employee_id` is the **primary key**.
- `experience_years` is guaranteed to be **NOT NULL**.
- Each row contains information about one employee.

---

## 🎯 Objective

Write an SQL query to report the **average experience years** of all the employees **for each project**, **rounded to 2 decimal places**.

Return the result table with the following columns:

- `project_id`
- `average_years`

The result can be returned in any order.

---

## ✅ Example

### Input

**Project**

| project_id | employee_id |
|------------|-------------|
| 1          | 1           |
| 1          | 2           |
| 1          | 3           |
| 2          | 1           |
| 2          | 4           |

**Employee**

| employee_id | name   | experience_years |
|-------------|--------|------------------|
| 1           | Khaled | 3                |
| 2           | Ali    | 2                |
| 3           | John   | 1                |
| 4           | Doe    | 2                |

### Output

| project_id | average_years |
|------------|----------------|
| 1          | 2.00           |
| 2          | 2.50           |

---

## 🧠 Explanation

To calculate the average experience for each project:

1. **Join** the `Project` and `Employee` tables on `employee_id` to associate each project with employee experience.
2. Use the `AVG()` function to compute the average of `experience_years` for each `project_id`.
3. Use `ROUND(..., 2)` to format the result to two decimal places as required.
4. Group the result by `project_id` to perform the aggregation per project.

The final result will show the average experience years of all employees working on each project, rounded to two decimal places.

---