# 1517. Find Users With Valid E-Mails

**Category**: Easy  
**Platform**: LeetCode  
**Tags**: SQL, Regular Expression, Filtering, Validation  

---

## 🧾 Problem Description

### Table: `Users`

| Column Name | Type    |
|-------------|---------|
| user_id     | int     |
| name        | varchar |
| mail        | varchar |

- `user_id` is the **primary key**.
- This table contains information about users who signed up on a website.
- Some emails in the `mail` field are invalid.

---

## 🎯 Objective

Write an SQL query to find users who have **valid email addresses**.

A valid email must satisfy both of the following rules:

1. The **prefix name**:
   - Must start with a **letter** (a–z or A–Z)
   - Can contain **letters**, **digits**, **underscores (_)**, **periods (.)**, and **dashes (-)**

2. The domain must be exactly: `@leetcode.com`

Return the result table in any order.

---

## ✅ Example

### Input

**Users**

| user_id | name      | mail                    |
|---------|-----------|-------------------------|
| 1       | Winston   | winston@leetcode.com    |
| 2       | Jonathan  | jonathanisgreat         |
| 3       | Annabelle | bella-@leetcode.com     |
| 4       | Sally     | sally.come@leetcode.com |
| 5       | Marwan    | quarz#2020@leetcode.com |
| 6       | David     | david69@gmail.com       |
| 7       | Shapiro   | .shapo@leetcode.com     |

### Output

| user_id | name      | mail                    |
|---------|-----------|-------------------------|
| 1       | Winston   | winston@leetcode.com    |
| 3       | Annabelle | bella-@leetcode.com     |
| 4       | Sally     | sally.come@leetcode.com |

---

## 🔍 Explanation

- ✅ `winston@leetcode.com` → valid
- ✅ `bella-@leetcode.com` → valid
- ✅ `sally.come@leetcode.com` → valid
- ❌ `jonathanisgreat` → no domain
- ❌ `quarz#2020@leetcode.com` → invalid character `#`
- ❌ `david69@gmail.com` → wrong domain
- ❌ `.shapo@leetcode.com` → prefix starts with a period

---
