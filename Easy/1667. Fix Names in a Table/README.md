# 1667. Fix Names in a Table

**Category**: Easy  
**Platform**: LeetCode  
**Tags**: SQL, String Functions, Formatting, Case Conversion  

---

## 🧾 Problem Description

### Table: `Users`

| Column Name | Type    |
|-------------|---------|
| user_id     | int     |
| name        | varchar |

- `user_id` is the **primary key**.
- This table contains the ID and the name of each user.
- The `name` column consists of **only uppercase and lowercase characters** (no numbers or special characters).

---

## 🎯 Objective

Fix the names in the `Users` table so that:
- Only the **first character** of each name is **uppercase**
- All other characters are **lowercase**

Return a result table with `user_id` and the corrected `name`, ordered by `user_id`.

---

## ✅ Example

### Input:

**Users**

| user_id | name  |
|---------|-------|
| 1       | aLice |
| 2       | bOB   |

### Output:

| user_id | name  |
|---------|-------|
| 1       | Alice |
| 2       | Bob   |

---

## 🧠 Explanation

- The name `"aLice"` becomes `"Alice"`: first letter uppercase, rest lowercase.
- The name `"bOB"` becomes `"Bob"`.

---
