# 1633. Percentage of Users Attended a Contest

**Category**: Easy  
**Platform**: LeetCode  
**Tags**: SQL, Aggregation, Percentage, Rounding, Sorting

---

## 🧾 Problem Description

### Table: `Users`

| Column Name | Type    |
|-------------|---------|
| user_id     | int     |
| user_name   | varchar |

- `user_id` is the **primary key**.
- Each row contains a user’s ID and name.

---

### Table: `Register`

| Column Name | Type |
|-------------|------|
| contest_id  | int  |
| user_id     | int  |

- (`contest_id`, `user_id`) is the **primary key**.
- Each row indicates a user’s registration for a contest.

---

## 🎯 Objective

Write a SQL query to calculate the **percentage of users registered** for each contest.

- The percentage is:  
  `(number of distinct users registered for a contest / total number of users) * 100`
- Round the result to **2 decimal places**.
- Return the result ordered by:
  - `percentage` in **descending** order
  - If tied, by `contest_id` in **ascending** order

---

## ✅ Example

### Input

**Users**

| user_id | user_name |
|---------|-----------|
| 6       | Alice     |
| 2       | Bob       |
| 7       | Alex      |

**Register**

| contest_id | user_id |
|------------|---------|
| 215        | 6       |
| 209        | 2       |
| 208        | 2       |
| 210        | 6       |
| 208        | 6       |
| 209        | 7       |
| 209        | 6       |
| 215        | 7       |
| 208        | 7       |
| 210        | 2       |
| 207        | 2       |
| 210        | 7       |

---

### Output

| contest_id | percentage |
|------------|------------|
| 208        | 100.00     |
| 209        | 100.00     |
| 210        | 100.00     |
| 215        | 66.67      |
| 207        | 33.33      |

---

## 🔍 Explanation

- There are **3 users** in total.
- Contests 208, 209, and 210 each had **all 3 users** registered → 100.00%
- Contest 215 had **2 users** → (2 / 3) * 100 = 66.67%
- Contest 207 had **1 user** → (1 / 3) * 100 = 33.33%

---