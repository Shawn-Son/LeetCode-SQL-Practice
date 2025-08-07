# LeetCode 1285. Find the Start and End Number of Continuous Ranges

## Problem Statement

Given the following table:

### Logs

| Column Name | Type |
|-------------|------|
| log_id      | int  |

- `log_id` is unique for each row.
- Each row contains the ID of a log entry.

---

## Task

Write a SQL query to find the **start and end number of continuous ranges** in the table Logs.

- For every maximal sequence of consecutive integers, output its smallest and largest value.
- Return the result table **ordered by start_id**.

---

## Example

### Input

| log_id |
|--------|
| 1      |
| 2      |
| 3      |
| 7      |
| 8      |
| 10     |

### Output

| start_id | end_id |
|----------|--------|
| 1        | 3      |
| 7        | 8      |
| 10       | 10     |

---
