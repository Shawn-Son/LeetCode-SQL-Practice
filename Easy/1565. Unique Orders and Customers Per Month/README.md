# LeetCode 1565. Unique Orders and Customers Per Month

## Problem Statement

Given the following table:

### Orders

| Column Name   | Type    |
|---------------|---------|
| order_id      | int     |
| order_date    | date    |
| customer_id   | int     |
| invoice       | int     |

- `order_id` is unique for each order.
- Each row contains information about one order, including the customer, date, and invoice amount.

---

## Task

Write a SQL query to **find the number of unique orders** and the **number of unique customers** with `invoice > $20` for each different month.

- Output should have three columns:
    - `month` (`YYYY-MM` format)
    - `order_count`: Number of unique orders in that month with `invoice > 20`
    - `customer_count`: Number of unique customers in that month with at least one order with `invoice > 20`
- Return the result sorted in any order.

---

## Example

### Input

| order_id | order_date | customer_id | invoice |
|----------|------------|-------------|---------|
| 1        | 2020-09-15 | 1           | 30      |
| 2        | 2020-09-17 | 2           | 90      |
| 3        | 2020-10-06 | 3           | 20      |
| 4        | 2020-10-20 | 3           | 21      |
| 5        | 2020-11-10 | 1           | 10      |
| 6        | 2020-11-21 | 2           | 15      |
| 7        | 2020-12-01 | 4           | 55      |
| 8        | 2020-12-03 | 4           | 77      |
| 9        | 2021-01-07 | 3           | 31      |
| 10       | 2021-01-15 | 2           | 20      |

### Output

| month   | order_count | customer_count |
|---------|-------------|----------------|
| 2020-09 | 2           | 2              |
| 2020-10 | 1           | 1              |
| 2020-12 | 2           | 1              |
| 2021-01 | 1           | 1              |

---