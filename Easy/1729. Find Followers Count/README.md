# 1729. Find Followers Count

**Category**: Easy  
**Platform**: LeetCode  
**Tags**: SQL, Aggregation, COUNT, GROUP BY  

---

## 🧾 Problem Description

### Table: `Followers`

| Column Name  | Type |
|--------------|------|
| user_id      | int  |
| follower_id  | int  |

- `(user_id, follower_id)` is the **primary key**.
- This table records the relationship where `follower_id` **follows** `user_id`.

---

## 🎯 Objective

Write an SQL query to return, for **each user**, the **number of followers** they have.

- The result should be a table with the following columns:
  - `user_id`
  - `followers_count`
- The output must be ordered by `user_id` in **ascending order**.

---

## ✅ Example

### Input

**Followers**

| user_id | follower_id |
|---------|-------------|
| 0       | 1           |
| 1       | 0           |
| 2       | 0           |
| 2       | 1           |

### Output

| user_id | followers_count |
|---------|------------------|
| 0       | 1                |
| 1       | 1                |
| 2       | 2                |

---

## 🔍 Explanation

- User `0` has 1 follower → `{1}`
- User `1` has 1 follower → `{0}`
- User `2` has 2 followers → `{0, 1}`

---