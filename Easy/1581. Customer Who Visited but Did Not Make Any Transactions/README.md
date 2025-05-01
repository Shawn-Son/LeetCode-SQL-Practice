# 1581. Customer Who Visited but Did Not Make Any Transactions

**Category**: Easy  
**Platform**: LeetCode  
**Tags**: SQL, Join, NULL, Filtering, Aggregation

---

## 🧾 Problem Description

### Table: `Visits`

| Column Name | Type |
|-------------|------|
| visit_id    | int  |
| customer_id | int  |

- `visit_id` is the **primary key**.
- Each row indicates a customer visit to the mall.

---

### Table: `Transactions`

| Column Name    | Type |
|----------------|------|
| transaction_id | int  |
| visit_id       | int  |
| amount         | int  |

- `transaction_id` is the **primary key**.
- Each row indicates a transaction made during a `visit_id`.

---

## 🎯 Objective

Return the **customer_id** and the number of times (`count_no_trans`) they visited **without making any transactions**.

- If a `visit_id` does not appear in the `Transactions` table, it's considered a visit without a transaction.
- Result can be returned in any order.

---

## ✅ Example

### Input:

**Visits**

| visit_id | customer_id |
|----------|-------------|
| 1        | 23          |
| 2        | 9           |
| 4        | 30          |
| 5        | 54          |
| 6        | 96          |
| 7        | 54          |
| 8        | 54          |

**Transactions**

| transaction_id | visit_id | amount |
|----------------|----------|--------|
| 2              | 5        | 310    |
| 3              | 5        | 300    |
| 9              | 5        | 200    |
| 12             | 1        | 910    |
| 13             | 2        | 970    |

---

### Output:

| customer_id | count_no_trans |
|-------------|----------------|
| 54          | 2              |
| 30          | 1              |
| 96          | 1              |

---

## 🔍 Explanation

- Visits **with no matching transaction records**:
  - visit_id = 4 (customer 30)
  - visit_id = 6, 7, 8 (customer 96 and 54)
- Among 54's 3 visits, only visit_id 5 had transactions.
- So, customer 54 had 2 visits without transactions.

---