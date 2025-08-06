# LeetCode 1777. Product's Price for Each Store

## Problem Statement

Given the following table:

### Products

| Column Name | Type    |
|-------------|---------|
| product_id  | int     |
| store       | enum    |  -- ('store1', 'store2', 'store3')
| price       | int     |

- `(product_id, store)` is the primary key.
- Each row represents the price of a product in a specific store.

---

## Task

Write a SQL query to find the **price of each product in each store**.
- If a product is not sold in a store, return `null` for that store.
- Return the result in any order.

---

## Example

### Input

| product_id | store  | price |
|------------|--------|-------|
| 0          | store1 | 95    |
| 0          | store3 | 105   |
| 0          | store2 | 100   |
| 1          | store1 | 70    |
| 1          | store3 | 80    |

### Output

| product_id | store1 | store2 | store3 |
|------------|--------|--------|--------|
| 0          | 95     | 100    | 105    |
| 1          | 70     | null   | 80     |
