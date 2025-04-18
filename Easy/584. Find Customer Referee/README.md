# 584. Find Customer Referee

**Category**: Easy  
**Platform**: LeetCode  
**Tags**: SQL, Filtering, NULL Handling, COALESCE

---

## 🧾 Problem Description

Table: Customer

| Column Name | Type    |
|-------------|---------|
| id          | int     |
| name        | varchar |
| referee_id  | int     |

- `id` is the **primary key**.
- Each row represents a customer, their name, and the ID of the customer who referred them.
- Some customers may not have a referee (`referee_id` is `NULL`).

---

## 🎯 Goal

> Return the **names of customers** who **were not referred by the customer with id = 2**.

- The result can be returned in **any order**.

