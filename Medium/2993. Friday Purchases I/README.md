# 2993. Friday Purchases I

## Problem Description

You are given a table `Purchases` with the following structure:

| Column Name   | Type |
|---------------|------|
| user_id       | int  |
| purchase_date | date |
| amount_spend  | int  |

- **Primary Key:** `(user_id, purchase_date, amount_spend)`  
- The date range is **November 1, 2023 to November 30, 2023** (inclusive).  
- Each row records:
  - The **user ID**
  - The **purchase date**
  - The **amount spent**

Your task:
- Calculate **total spending** by all users **on Fridays** in November 2023.
- Return only **weeks that include at least one Friday purchase**.
- **Order** the results by `week_of_month` in ascending order.

---

## Example

### Input
| user_id | purchase_date | amount_spend |
|---------|---------------|--------------|
| 11      | 2023-11-07    | 1126         |
| 15      | 2023-11-30    | 7473         |
| 17      | 2023-11-14    | 2414         |
| 12      | 2023-11-24    | 9692         |
| 8       | 2023-11-03    | 5117         |
| 1       | 2023-11-16    | 5241         |
| 10      | 2023-11-12    | 8266         |
| 13      | 2023-11-24    | 12000        |

### Output
| week_of_month | purchase_date | total_amount |
|---------------|---------------|--------------|
| 1             | 2023-11-03    | 5117         |
| 4             | 2023-11-24    | 21692        |

---

## Explanation
- **Week 1**: Friday `2023-11-03` has one purchase of `5117`.
- **Week 2**: Friday `2023-11-10` has **no purchases** → excluded.
- **Week 3**: Friday `2023-11-17` has **no purchases** → excluded.
- **Week 4**: Friday `2023-11-24` has two purchases (`9692` + `12000`) → total `21692`.
- Results are ordered by `week_of_month`.

---