# 196. Delete Duplicate Emails

**Category**: Easy  
**Platform**: LeetCode  
**Tags**: SQL, DELETE, Deduplication, Subquery, Self-Join

---

## 🧾 Problem Description

### Table: `Person`

| Column Name | Type    |
|-------------|---------|
| id          | int     |
| email       | varchar |

- `id` is the **primary key** (unique).
- Each row contains a user and their email.
- Emails are all in **lowercase**.
- Some emails are **duplicated** but have different `id`s.

---

## 🎯 Objective

Write a SQL solution to **delete all duplicate emails**, keeping only the record with the **smallest `id`** for each email.

### Constraints:
- Use a **`DELETE`** statement.
- Do **not** return a SELECT output.
- The final row order **does not matter**.

---

## ✅ Output

After execution, the `Person` table should contain only **unique emails**, and only the row with the **lowest `id`** per email should remain.

---

## 🧠 Example

### Input

| id | email            |
|----|------------------|
| 1  | john@example.com |
| 2  | bob@example.com  |
| 3  | john@example.com |

### Output

| id | email            |
|----|------------------|
| 1  | john@example.com |
| 2  | bob@example.com  |

---