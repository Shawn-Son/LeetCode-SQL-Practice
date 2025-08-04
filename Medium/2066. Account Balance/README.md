# LeetCode 2066. Account Balance

## Problem Statement

Given the following table:

### Transactions

| Column Name | Type |
|-------------|------|
| account_id  | int  |
| day         | date |
| type        | ENUM |  -- ('Deposit','Withdraw')
| amount      | int  |

- `(account_id, day)` is the primary key.
- Each row contains one transaction for a user (account), including transaction type, the day it occurred, and the amount.

---

## Task

Write a SQL query to report the **balance of each user after each transaction**.

- You may assume that the **balance of each account before any transaction is 0**.
- The balance will **never be below 0** at any moment.
- Return the result **ordered by `account_id` ascending, then by `day` ascending**.

---

## Example

### Input

**Transactions table:**

| account_id | day        | type     | amount |
|------------|------------|----------|--------|
| 1          | 2021-11-07 | Deposit  | 2000   |
| 1          | 2021-11-09 | Withdraw | 1000   |
| 1          | 2021-11-11 | Deposit  | 3000   |
| 2          | 2021-12-07 | Deposit  | 7000   |
| 2          | 2021-12-12 | Withdraw | 7000   |

### Output

| account_id | day        | balance |
|------------|------------|---------|
| 1          | 2021-11-07 | 2000    |
| 1          | 2021-11-09 | 1000    |
| 1          | 2021-11-11 | 4000    |
| 2          | 2021-12-07 | 7000    |
| 2          | 2021-12-12 | 0       |

---