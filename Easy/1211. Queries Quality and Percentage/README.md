# 1211. Queries Quality and Percentage

**Category**: Easy  
**Platform**: LeetCode  
**Tags**: SQL, Aggregation, Conditional Aggregation, ROUND, GROUP BY

---

## 🧾 Problem Description

### Table: `Queries`

| Column Name | Type    |
|-------------|---------|
| query_name  | varchar |
| result      | varchar |
| position    | int     |
| rating      | int     |

- This table may contain **duplicate rows**.
- `position` is an integer from **1 to 500**.
- `rating` is an integer from **1 to 5**.
- A query with **rating < 3** is considered a **poor query**.

---

## 🎯 Objective

For each unique `query_name`, calculate:

1. **Quality**:
   - Defined as the **average** of `(rating / position)` for all entries of that query.

2. **Poor Query Percentage**:
   - Defined as the percentage of queries with `rating < 3` out of the total for that `query_name`, **rounded to 2 decimal places**.

Return the result table with the following columns:

| Column Name            | Type  |
|------------------------|-------|
| query_name             | text  |
| quality                | float |
| poor_query_percentage  | float |

The output can be returned in any order.

---

## ✅ Example

### Input: `Queries` Table

| query_name | result            | position | rating |
|------------|-------------------|----------|--------|
| Dog        | Golden Retriever  | 1        | 5      |
| Dog        | German Shepherd   | 2        | 5      |
| Dog        | Mule              | 200      | 1      |
| Cat        | Shirazi           | 5        | 2      |
| Cat        | Siamese           | 3        | 3      |
| Cat        | Sphynx            | 7        | 4      |

### Output

| query_name | quality | poor_query_percentage |
|------------|---------|------------------------|
| Dog        | 2.50    | 33.33                  |
| Cat        | 0.66    | 33.33                  |

---

## 🧠 Explanation

- **Dog**:
  - Quality = ((5/1) + (5/2) + (1/200)) / 3 = 2.50
  - Poor queries = 1 (rating = 1), Total = 3 → (1 / 3) * 100 = 33.33%

- **Cat**:
  - Quality = ((2/5) + (3/3) + (4/7)) / 3 ≈ 0.66
  - Poor queries = 1 (rating = 2), Total = 3 → (1 / 3) * 100 = 33.33%

---

## 🛠️ Notes

- Use `GROUP BY query_name` to group calculations.
- Use `ROUND(..., 2)` to round to two decimal places.
- Use `COUNT(*)` and `COUNT(CASE WHEN rating < 3 THEN 1 END)` to compute percentages.
- Floating-point division should be ensured via `* 1.0` or `CAST`.

---

## 📆 Constraints

- Each `position` is between 1 and 500 (inclusive).
- Each `rating` is between 1 and 5.
- Up to 10^4 records.