# 197. Rising Temperature

**Difficulty**: Easy  
**Topics**: SQL, Date Comparison, Self Join  

---

## 🧠 Problem Summary

You are given a `Weather` table that contains daily temperature records.

Your task is to write an SQL query that finds all dates where the **temperature was higher than the previous day (yesterday)**.

Return the result table **by the `id` of those dates**. The order does not matter.

---

## 📘 Table Structure

### `Weather`

| Column Name   | Type  | Description                                     |
|---------------|-------|-------------------------------------------------|
| `id`          | int   | Primary key (unique for each row)               |
| `recordDate`  | date  | Date of the temperature recording               |
| `temperature` | int   | Temperature value recorded on that date         |

- `recordDate` values are unique (i.e., no duplicate dates).
- There are no missing rows for consecutive dates, but **not all consecutive days are guaranteed to be present** in the table.

---

## ✅ Objective

Find the `id`s of the days where:
- The temperature on that day is **higher than the previous day’s temperature**.

---

## 🧾 Example

### Input

#### `Weather` Table

| id | recordDate | temperature |
|----|------------|-------------|
| 1  | 2015-01-01 | 10          |
| 2  | 2015-01-02 | 25          |
| 3  | 2015-01-03 | 20          |
| 4  | 2015-01-04 | 30          |

### Output

| id |
|----|
| 2  |
| 4  |

### Explanation

- `2015-01-02`: 25 > 10 → ✅
- `2015-01-03`: 20 < 25 → ❌
- `2015-01-04`: 30 > 20 → ✅