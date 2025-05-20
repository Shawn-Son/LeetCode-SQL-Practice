# 1484. Group Sold Products By The Date

**Category**: Easy  
**Platform**: LeetCode  
**Tags**: SQL, Aggregation, GROUP BY, STRING_AGG

---

## 🧾 Problem Description

### Table: `Activities`

| Column Name | Type    |
|-------------|---------|
| sell_date   | date    |
| product     | varchar |

- There is no primary key for this table; it may contain duplicates.
- Each row in the `Activities` table records the name of a product and the date it was sold in a market.

---

## 🎯 Objective

Write a SQL query to:

- Report, for each `sell_date`:
  - The number of **distinct** products sold on that date (`num_sold`)
  - A **comma-separated**, **alphabetically sorted** list of those product names (`products`)

Return the result **ordered by `sell_date` ascending**.

---

## ✅ Example

### Input:

**Activities**

| sell_date  | product     |
|------------|-------------|
| 2020-05-30 | Headphone   |
| 2020-06-01 | Pencil      |
| 2020-06-02 | Mask        |
| 2020-05-30 | Basketball  |
| 2020-06-01 | Bible       |
| 2020-06-02 | Mask        |
| 2020-05-30 | T-Shirt     |

### Output:

| sell_date  | num_sold | products                     |
|------------|----------|------------------------------|
| 2020-05-30 | 3        | Basketball,Headphone,T-shirt |
| 2020-06-01 | 2        | Bible,Pencil                 |
| 2020-06-02 | 1        | Mask                         |

---

## 🔍 Explanation

- On **2020-05-30**, 3 unique products were sold: Basketball, Headphone, and T-shirt. Sorted alphabetically and joined with commas.
- On **2020-06-01**, Bible and Pencil were sold → 2 unique, sorted.
- On **2020-06-02**, only Mask was sold, though twice → distinct count is 1.

---

## 🧠 Hints

- Use `GROUP BY` on `sell_date`.
- Use `COUNT(DISTINCT product)` for counting.
- Use `STRING_AGG(DISTINCT product, ',' ORDER BY product)` (PostgreSQL) to get comma-separated sorted product names.

---