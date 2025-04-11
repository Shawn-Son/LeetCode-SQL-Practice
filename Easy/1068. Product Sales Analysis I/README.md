# 1068. Product Sales Analysis I

**Category**: Easy  
**Platform**: LeetCode  
**Tags**: SQL, JOIN, SELECT, Aliasing

---

## 🧾 Problem Description

### Table: Sales

| Column Name | Type |
|-------------|------|
| sale_id     | int  |
| product_id  | int  |
| year        | int  |
| quantity    | int  |
| price       | int  |

- `(sale_id, year)` is the **Primary Key**.
- `product_id` is a **foreign key** referencing the `Product` table.
- Each row represents the sale of a product in a given year.
- `price` is per unit.

---

### Table: Product

| Column Name   | Type    |
|---------------|---------|
| product_id    | int     |
| product_name  | varchar |

- `product_id` is the **Primary Key**.
- Each row indicates the name of the product.

---

## 🎯 Goal

> Return the `product_name`, `year`, and `price` for each `sale_id` in the `Sales` table.

- The result can be returned in **any order**.

---

## 🔍 Explanation
- JOIN is used to combine the Sales and Product tables using the shared product_id.
- Only the necessary fields product_name, year, and price are selected.
- Since we are guaranteed product_id exists in both tables, JOIN (not LEFT JOIN) is sufficient.