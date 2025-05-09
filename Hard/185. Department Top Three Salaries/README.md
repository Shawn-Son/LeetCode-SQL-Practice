# 185. Department Top Three Salaries

**Category**: Hard  
**Platform**: LeetCode  
**Tags**: SQL, Ranking, Window Functions, Filtering, Self-Join

---

## 🧾 Problem Description

### Table: `Employee`

| Column Name  | Type    |
|--------------|---------|
| id           | int     |
| name         | varchar |
| salary       | int     |
| departmentId | int     |

- `id` is the **primary key**.
- `departmentId` is a foreign key referring to `Department.id`.
- Each row contains the name, salary, and department ID of an employee.

---

### Table: `Department`

| Column Name | Type    |
|-------------|---------|
| id          | int     |
| name        | varchar |

- `id` is the **primary key**.
- Each row contains the name of a department.

---

## 🎯 Objective

Write a SQL query to return **employees who are among the top three unique salaries** in each department.

- "Top three" means **three highest unique salaries** (not just top 3 earners)
- Return the **name of the department**, the **name of the employee**, and their **salary**
- Result can be in any order

---

## ✅ Example

### Input

**Employee**

| id | name  | salary | departmentId |
|----|-------|--------|--------------|
| 1  | Joe   | 85000  | 1            |
| 2  | Henry | 80000  | 2            |
| 3  | Sam   | 60000  | 2            |
| 4  | Max   | 90000  | 1            |
| 5  | Janet | 69000  | 1            |
| 6  | Randy | 85000  | 1            |
| 7  | Will  | 70000  | 1            |

**Department**

| id | name  |
|----|-------|
| 1  | IT    |
| 2  | Sales |

---

### Output

| Department | Employee | Salary |
|------------|----------|--------|
| IT         | Max      | 90000  |
| IT         | Joe      | 85000  |
| IT         | Randy    | 85000  |
| IT         | Will     | 70000  |
| Sales      | Henry    | 80000  |
| Sales      | Sam      | 60000  |

---

## 🔍 Explanation

- IT Department has 4 high earners:
  - 90000 (Max)
  - 85000 (Joe, Randy)
  - 70000 (Will)
- Sales Department has only 2 employees:
  - 80000 (Henry)
  - 60000 (Sam)

Each department’s employees whose salary is within the top 3 **distinct** values are included.