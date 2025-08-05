# LeetCode 1831. Maximum Transaction Each Day

## Problem Statement

Given the following table:

### Transactions

| Column Name    | Type     |
|----------------|----------|
| transaction_id | int      |
| day            | datetime |
| amount         | int      |

- `transaction_id` is unique.
- Each row contains information about one transaction.

---

## Task

Write a SQL query to **report the IDs of the transactions with the maximum amount on their respective day**.
- If there are multiple such transactions in a day, return all of them.
- The result must be **ordered by transaction_id ascending**.

---

## Example

### Input

| transaction_id | day                | amount |
|----------------|--------------------|--------|
| 8              | 2021-4-3 15:57:28  | 57     |
| 9              | 2021-4-28 08:47:25 | 21     |
| 1              | 2021-4-29 13:28:30 | 58     |
| 5              | 2021-4-28 16:39:59 | 40     |
| 6              | 2021-4-29 23:39:28 | 58     |

### Output

| transaction_id |
|----------------|
| 1              |
| 5              |
| 6              |
| 8              |

---