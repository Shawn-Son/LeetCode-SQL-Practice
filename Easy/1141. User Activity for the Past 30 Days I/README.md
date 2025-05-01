# 1141. User Activity for the Past 30 Days I

**Category**: Easy  
**Platform**: LeetCode  
**Tags**: SQL, GROUP BY, Filtering, COUNT DISTINCT, DATE

---

## 🧾 Problem Description

### Table: `Activity`

| Column Name   | Type    |
|---------------|---------|
| user_id       | int     |
| session_id    | int     |
| activity_date | date    |
| activity_type | enum('open_session', 'end_session', 'scroll_down', 'send_message') |

- There may be **duplicate rows**.
- Each `session_id` belongs to **exactly one user**.
- This table logs all user activities on a social media website.

---

## 🎯 Objective

Find the **number of distinct active users per day**, within the last **30 days ending on 2019-07-27 (inclusive)**.

- A user is **active on a day** if they made at least one activity on that day.
- Return result as:
  - `day`: the `activity_date`
  - `active_users`: number of distinct `user_id`s active on that day

---

## ✅ Example

### Input:

**Activity**

| user_id | session_id | activity_date | activity_type |
|---------|-------------|----------------|----------------|
| 1       | 1           | 2019-07-20     | open_session   |
| 1       | 1           | 2019-07-20     | scroll_down    |
| 1       | 1           | 2019-07-20     | end_session    |
| 2       | 4           | 2019-07-20     | open_session   |
| 2       | 4           | 2019-07-21     | send_message   |
| 2       | 4           | 2019-07-21     | end_session    |
| 3       | 2           | 2019-07-21     | open_session   |
| 3       | 2           | 2019-07-21     | send_message   |
| 3       | 2           | 2019-07-21     | end_session    |
| 4       | 3           | 2019-06-25     | open_session   |
| 4       | 3           | 2019-06-25     | end_session    |

---

### Output:

| day        | active_users |
|------------|---------------|
| 2019-07-20 | 2             |
| 2019-07-21 | 2             |

---

## 🧠 Explanation

- On `2019-07-20`, users 1 and 2 were active
- On `2019-07-21`, users 2 and 3 were active
- Days before `2019-06-28` are not included (only 30-day window from `2019-06-28` to `2019-07-27`)

---