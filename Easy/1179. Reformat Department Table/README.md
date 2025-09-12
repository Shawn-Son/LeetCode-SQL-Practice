# 1179. Reformat Department Table

## 📘 Problem

You are given the table **Department**:

| Column Name | Type    |
|-------------|---------|
| id          | int     |
| revenue     | int     |
| month       | varchar |

- `(id, month)` is the primary key.
- `month` ∈ ["Jan","Feb","Mar","Apr","May","Jun","Jul","Aug","Sep","Oct","Nov","Dec"].

---

## ✅ Task

Reformat the table so that:
- Each row represents a department (`id`).
- There is one column for each month showing that department's revenue for the month.
- Missing months should be `NULL`.

Return the result in any order.

---

## 🔎 Example

### Input
+——+———+—––+
| id   | revenue | month |
+——+———+—––+
| 1    | 8000    | Jan   |
| 2    | 9000    | Jan   |
| 3    | 10000   | Feb   |
| 1    | 7000    | Feb   |
| 1    | 6000    | Mar   |
+——+———+—––+

### Output

+——+———––+———––+———––+—–+———––+
| id   | Jan_Revenue | Feb_Revenue | Mar_Revenue | … | Dec_Revenue |
+——+———––+———––+———––+—–+———––+
| 1    | 8000        | 7000        | 6000        | … | null        |
| 2    | 9000        | null        | null        | … | null        |
| 3    | null        | 10000       | null        | … | null        |
+——+———––+———––+———––+—–+———––+