# 2324. Product Sales Analysis IV

## 📘 Problem

You are given two tables:

### Table: Sales
| Column Name | Type |
|-------------|------|
| sale_id     | int  |
| product_id  | int  |
| user_id     | int  |
| quantity    | int  |

- `sale_id` contains unique values.
- Each row shows how many units of a product were purchased by a user.

### Table: Product
| Column Name | Type |
|-------------|------|
| product_id  | int  |
| price       | int  |

- `product_id` contains unique values.
- Each row shows the unit price of a product.

---

## ✅ Task

For each user, report the `product_id`(s) on which the user spent the **most money**.  
If there are ties, include all products with the maximum spending for that user.

Return the resulting table in any order.

---