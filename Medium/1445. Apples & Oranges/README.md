# LeetCode 1445. Apples & Oranges

## Problem Description

Given a table `Sales` containing the number of apples and oranges sold each day,  
write a query to report the **difference between the number of apples and oranges sold each day**.

- For each `sale_date`, calculate:  
  `diff = number of apples sold - number of oranges sold`
- Return the result ordered by `sale_date` in ascending order.

---

## Example

### Input

| sale_date  | fruit    | sold_num |
|------------|----------|----------|
| 2020-05-01 | apples   | 10       |
| 2020-05-01 | oranges  | 8        |
| 2020-05-02 | apples   | 15       |
| 2020-05-02 | oranges  | 15       |
| 2020-05-03 | apples   | 20       |
| 2020-05-03 | oranges  | 0        |
| 2020-05-04 | apples   | 15       |
| 2020-05-04 | oranges  | 16       |

### Output

| sale_date  | diff |
|------------|------|
| 2020-05-01 | 2    |
| 2020-05-02 | 0    |
| 2020-05-03 | 20   |
| 2020-05-04 | -1   |