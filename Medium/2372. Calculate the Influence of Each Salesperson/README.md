# LeetCode 2372. Calculate the Influence of Each Salesperson

## Problem Statement

Given the following tables:

### Salesperson

| Column Name    | Type    |
|----------------|---------|
| salesperson_id | int     |
| name           | varchar |

- `salesperson_id` contains unique values.
- Each row shows the ID and name of a salesperson.

### Customer

| Column Name    | Type |
|----------------|------|
| customer_id    | int  |
| salesperson_id | int  |

- `customer_id` contains unique values.
- `salesperson_id` is a foreign key from the Salesperson table.
- Each row shows the customer and the salesperson responsible for them.

### Sales

| Column Name | Type |
|-------------|------|
| sale_id     | int  |
| customer_id | int  |
| price       | int  |

- `sale_id` contains unique values.
- `customer_id` is a foreign key from the Customer table.
- Each row shows a sale made by a customer and the price paid.

---

## Task

Write a SQL query to report the **sum of prices paid by the customers of each salesperson**.
- If a salesperson does not have any customers, the total value should be 0.
- Return the result table in any order.

---

## Example

### Input

**Salesperson**

| salesperson_id | name  |
|----------------|-------|
| 1              | Alice |
| 2              | Bob   |
| 3              | Jerry |

**Customer**

| customer_id | salesperson_id |
|-------------|----------------|
| 1           | 1              |
| 2           | 1              |
| 3           | 2              |

**Sales**

| sale_id | customer_id | price |
|---------|-------------|-------|
| 1       | 2           | 892   |
| 2       | 1           | 354   |
| 3       | 3           | 988   |
| 4       | 3           | 856   |

### Output

| salesperson_id | name  | total |
|----------------|-------|-------|
| 1              | Alice | 1246  |
| 2              | Bob   | 1844  |
| 3              | Jerry | 0     |

---
