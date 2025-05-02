# 1978. Employees Whose Manager Left the Company

**Category**: Easy  
**Platform**: LeetCode  
**Tags**: SQL, Self Join, Filtering, NULL, Subquery

---

## 🧾 Problem Description

### Table: `Employees`

| Column Name  | Type    |
|--------------|---------|
| employee_id  | int     |
| name         | varchar |
| manager_id   | int     |
| salary       | int     |

- `employee_id` is the **primary key**.
- Each employee may or may not have a manager (`manager_id` may be `NULL`).
- If a manager leaves the company, their information is deleted from the table.
- However, the `manager_id` field of their subordinates is not updated.

---

## 🎯 Objective

Find the employees who meet **both** of the following criteria:

1. Their salary is **less than 30000**  
2. Their `manager_id` **does not exist** in the Employees table  
   (i.e., the manager has left the company)

Return a result table with only the `employee_id`, ordered by `employee_id`.

---

## ✅ Example

### Input:

**Employees**

| employee_id | name      | manager_id | salary |
|-------------|-----------|------------|--------|
| 3           | Mila      | 9          | 60301  |
| 12          | Antonella | null       | 31000  |
| 13          | Emery     | null       | 67084  |
| 1           | Kalel     | 11         | 21241  |
| 9           | Mikaela   | null       | 50937  |
| 11          | Joziah    | 6          | 28485  |

### Output:

| employee_id |
|-------------|
| 11          |

---

## 🧠 Explanation

- Kalel (employee 1) has salary < 30000 ✅, but their manager (employee 11) **still exists** → ❌ 제외
- Joziah (employee 11) has salary < 30000 ✅, and their manager (employee 6) **does not exist** → ✅ 포함

---