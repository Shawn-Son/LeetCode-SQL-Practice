# 180. Consecutive Numbers

**Difficulty**: Medium  
**Topics**: SQL, Self Join, Window Functions  

---

## 🧠 Problem Summary

You're given a `Logs` table which records a series of numbers in a column called `num`, with an auto-incrementing `id` as the primary key.

Your task is to find all numbers that appear **at least three times in a row (consecutively)** based on the `id` order.

---

## 📘 Table Structure

### `Logs`

| Column Name | Type    | Description                          |
|-------------|---------|--------------------------------------|
| `id`        | int     | Primary key, auto-incremented        |
| `num`       | varchar | The number recorded at this row      |

- `id` starts at 1 and increases by 1 for each row.
- Rows are ordered by `id` for the purposes of determining "consecutive".

---

## ✅ Objective

Return a table with one column:

| Column Name       | Description                               |
|-------------------|-------------------------------------------|
| `ConsecutiveNums` | Any `num` that appears ≥ 3 times in a row |

Return one row per number.

---

## 🧾 Example

### Input

#### `Logs` Table

| id | num |
|----|-----|
| 1  | 1   |
| 2  | 1   |
| 3  | 1   |
| 4  | 2   |
| 5  | 1   |
| 6  | 2   |
| 7  | 2   |

### Output

| ConsecutiveNums |
|-----------------|
| 1               |

### Explanation

- `1` appears at `id` 1, 2, 3 → ✅
- `2` appears at `id` 6, 7 → only two in a row → ❌

---

## ✅ SQL Solution (Self Join)

```sql
SELECT DISTINCT l1.num AS ConsecutiveNums
FROM Logs l1
JOIN Logs l2 ON l1.id = l2.id - 1
JOIN Logs l3 ON l1.id = l3.id - 2
WHERE l1.num = l2.num AND l2.num = l3.num;