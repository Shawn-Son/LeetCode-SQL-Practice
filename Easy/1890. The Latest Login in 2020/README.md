# 1890. The Latest Login in 2020

## 📘 Problem Description
You are given a table **Logins** with the following schema:

| Column Name | Type     |
|-------------|----------|
| user_id     | int      |
| time_stamp  | datetime |

- `(user_id, time_stamp)` is the primary key.  
- Each row stores the login timestamp for a given user.  

Write a solution to report the **latest login** for all users in the year **2020**.  
- Exclude users who did not log in during 2020.  
- Return the result in any order.  

---

## ✅ Example

### Input