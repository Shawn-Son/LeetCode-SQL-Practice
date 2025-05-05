# 610. Triangle Judgement

**Category**: Easy  
**Platform**: LeetCode  
**Tags**: SQL, Conditional Logic, Geometry, CASE Statement  

---

## 🧾 Problem Description

### Table: Triangle

| Column Name | Type |
|-------------|------|
| x           | int  |
| y           | int  |
| z           | int  |

- `(x, y, z)` is the **primary key**.
- Each row contains the lengths of three line segments.

---

## 🎯 Objective

Write an SQL query to determine whether the three given side lengths in each row can form a valid triangle.

A valid triangle must satisfy the **triangle inequality theorem**, meaning:
- The sum of any two sides must be greater than the third:
  - `x + y > z`
  - `x + z > y`
  - `y + z > x`

Return a result table with the original side lengths and an additional column `triangle` containing:
- `'Yes'` if the three sides form a triangle
- `'No'` otherwise

The result can be returned in any order.

---

## ✅ Example

### Input:

**Triangle**

| x  | y  | z  |
|----|----|----|
| 13 | 15 | 30 |
| 10 | 20 | 15 |

### Output:

| x  | y  | z  | triangle |
|----|----|----|----------|
| 13 | 15 | 30 | No       |
| 10 | 20 | 15 | Yes      |

---

## 🔍 Explanation

- For the first row: 13 + 15 = 28, which is **not greater than** 30 → Not a triangle
- For the second row: All three conditions are satisfied:
  - 10 + 20 > 15
  - 10 + 15 > 20
  - 20 + 15 > 10
  → Valid triangle

---