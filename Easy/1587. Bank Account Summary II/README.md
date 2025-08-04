# LeetCode 1587. Bank Account Summary II

## Problem Statement

Given the following tables:

### Users

| Column Name | Type    |
|-------------|---------|
| account     | int     |
| name        | varchar |

- `account` is the primary key.
- Each row contains the account number and name of a bank user.
- No two users have the same name.

### Transactions

| Column Name   | Type |
|---------------|------|
| trans_id      | int  |
| account       | int  |
| amount        | int  |
| transacted_on | date |

- `trans_id` is the primary key.
- Each row contains all changes made to all accounts.
- `amount` is positive if the user received money and negative if they transferred money.
- All accounts start with a balance of 0.

---

## Task

Write a SQL query to report the **name and balance** of users with a balance **higher than 10,000**.  
The balance of an account is the sum of the amounts of all transactions involving that account.

Return the result table in any order.

---

## Example

### Input

**Users table:**

| account  | name    |
|----------|---------|
| 900001   | Alice   |
| 900002   | Bob     |
| 900003   | Charlie |

**Transactions table:**

| trans_id | account  | amount | transacted_on |
|----------|----------|--------|---------------|
| 1        | 900001   | 7000   | 2020-08-01    |
| 2        | 900001   | 7000   | 2020-09-01    |
| 3        | 900001   | -3000  | 2020-09-02    |
| 4        | 900002   | 1000   | 2020-09-12    |
| 5        | 900003   | 6000   | 2020-08-07    |
| 6        | 900003   | 6000   | 2020-09-07    |
| 7        | 900003   | -4000  | 2020-09-11    |

### Output

| name   | balance |
|--------|---------|
| Alice  | 11000   |

---