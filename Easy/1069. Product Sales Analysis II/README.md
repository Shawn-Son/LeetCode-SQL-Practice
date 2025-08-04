# LeetCode 1069. Product Sales Analysis II

## Problem Statement

Given the following tables:

### Sales

| Column Name | Type  |
|-------------|-------|
| sale_id     | int   |
| product_id  | int   |
| year        | int   |
| quantity    | int   |
| price       | int   |

- `(sale_id, year)` is the primary key.
- `product_id` is a foreign key to the Product table.
- Each row shows a sale on a product in a given year. `quantity` is the number of items sold, `price` is the price per unit.

### Product

| Column Name  | Type    |
|--------------|---------|
| product_id   | int     |
| product_name | varchar |

- `product_id` is the primary key.
- Each row contains the name of a product.

---

## Task

Write a SQL query that reports the **total quantity sold for every product id**.  
Return the result in any order.

---

## Example

### Input

**Sales table:**

| sale_id | product_id | year | quantity | price |
|---------|------------|------|----------|-------|
| 1       | 100        | 2008 | 10       | 5000  |
| 2       | 100        | 2009 | 12       | 5000  |
| 7       | 200        | 2011 | 15       | 9000  |

**Product table:**

| product_id | product_name |
|------------|-------------|
| 100        | Nokia       |
| 200        | Apple       |
| 300        | Samsung     |

### Output

| product_id | total_quantity |
|------------|---------------|
| 100        | 22            |
| 200        | 15            |

---