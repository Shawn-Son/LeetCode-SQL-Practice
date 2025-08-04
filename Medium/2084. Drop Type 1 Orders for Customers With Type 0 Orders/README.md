# LeetCode 2084. Drop Type 1 Orders for Customers With Type 0 Orders

## Problem Statement

Given the following table:

### Orders

| Column Name | Type |
|-------------|------|
| order_id    | int  |
| customer_id | int  |
| order_type  | int  |

- `order_id` contains unique values for each order.
- `order_type` can be either 0 or 1.

Write a SQL query to **report all the orders** with the following criteria:
- **If a customer has at least one order of type 0, do NOT report any order of type 1 from that customer.**
- Otherwise, report all orders of the customer.

Return the result table in any order.

---

## Example

### Input

| order_id | customer_id | order_type |
|----------|-------------|------------|
| 1        | 1           | 0          |
| 2        | 1           | 0          |
| 11       | 2           | 0          |
| 12       | 2           | 1          |
| 21       | 3           | 1          |
| 22       | 3           | 0          |
| 31       | 4           | 1          |
| 32       | 4           | 1          |

### Output

| order_id | customer_id | order_type |
|----------|-------------|------------|
| 31       | 4           | 1          |
| 32       | 4           | 1          |
| 1        | 1           | 0          |
| 2        | 1           | 0          |
| 11       | 2           | 0          |
| 22       | 3           | 0          |

---