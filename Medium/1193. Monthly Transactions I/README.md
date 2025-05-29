# 1193. Monthly Transactions I

**Difficulty**: Medium  
**Topics**: SQL, Aggregation, Filtering, Grouping, Date Functions  

---

## 🧠 Problem Summary

You are given a `Transactions` table that records financial transactions. Each record includes:
- A unique ID
- The country where the transaction occurred
- Its state (`approved` or `declined`)
- The transaction amount
- The date of the transaction

Your goal is to **generate a report** that aggregates the following data **per month and country**:

1. Total number of transactions
2. Total amount of transactions
3. Number of `approved` transactions
4. Total amount of `approved` transactions

---

## 📘 Table Structure

### `Transactions`

| Column Name   | Type    | Description                                       |
|---------------|---------|---------------------------------------------------|
| `id`          | int     | Primary key                                       |
| `country`     | varchar | Country where the transaction occurred            |
| `state`       | enum    | Either `'approved'` or `'declined'`              |
| `amount`      | int     | Transaction amount                                |
| `trans_date`  | date    | Date the transaction occurred                     |

- `state` is a fixed set of values: `['approved', 'declined']`.

---

## ✅ Objective

Return a result table with the following columns, **grouped by month and country**:

| Column Name             | Description                                         |
|-------------------------|-----------------------------------------------------|
| `month`                 | Month in `YYYY-MM` format (from `trans_date`)      |
| `country`               | Country of the transaction                          |
| `trans_count`           | Total number of transactions                        |
| `approved_count`        | Number of transactions with `state = 'approved'`    |
| `trans_total_amount`    | Total amount of all transactions                    |
| `approved_total_amount` | Total amount of `approved` transactions             |

---

## 🧾 Example

### Input

#### `Transactions` Table

| id  | country | state    | amount | trans_date |
|-----|---------|----------|--------|------------|
| 121 | US      | approved | 1000   | 2018-12-18 |
| 122 | US      | declined | 2000   | 2018-12-19 |
| 123 | US      | approved | 2000   | 2019-01-01 |
| 124 | DE      | approved | 2000   | 2019-01-07 |

### Output

| month    | country | trans_count | approved_count | trans_total_amount | approved_total_amount |
|----------|---------|-------------|----------------|--------------------|-----------------------|
| 2018-12  | US      | 2           | 1              | 3000               | 1000                  |
| 2019-01  | US      | 1           | 1              | 2000               | 2000                  |
| 2019-01  | DE      | 1           | 1              | 2000               | 2000                  |

---