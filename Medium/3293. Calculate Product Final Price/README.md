# LeetCode 3293. Calculate Product Final Price

## Problem Statement

You are given two tables:

### Products

| Column Name | Type    |
|-------------|---------|
| product_id  | int     |
| category    | varchar |
| price       | decimal |

- `product_id` is the primary key (unique values).
- Each row contains the product ID, its category, and price.

### Discounts

| Column Name | Type    |
|-------------|---------|
| category    | varchar |
| discount    | int     |

- `category` is the primary key.
- Each row contains a product category and the discount percentage for that category (0–100).

---

## Task

Write a SQL query to **calculate the final price of each product** after applying the category discount:
- If a product’s category has a discount, reduce its price by that percentage.
- If no discount exists for the category, the price remains unchanged.

Return the result table ordered by `product_id` in ascending order.

---

## Example

### Input

**Products table:**

| product_id | category    | price |
|------------|-------------|-------|
| 1          | Electronics | 1000  |
| 2          | Clothing    | 50    |
| 3          | Electronics | 1200  |
| 4          | Home        | 500   |

**Discounts table:**

| category    | discount |
|-------------|----------|
| Electronics | 10       |
| Clothing    | 20       |

### Output

| product_id | final_price | category    |
|------------|-------------|-------------|
| 1          | 900         | Electronics |
| 2          | 40          | Clothing    |
| 3          | 1080        | Electronics |
| 4          | 500         | Home        |

---

## Explanation

- Product 1: **1000 - (10% of 1000) = 900**
- Product 2: **50 - (20% of 50) = 40**
- Product 3: **1200 - (10% of 1200) = 1080**
- Product 4: No discount for category **Home**, so price remains **500**.

---