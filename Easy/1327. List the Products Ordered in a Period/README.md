# 1327. List the Products Ordered in a Period

**Category**: Easy  
**Platform**: LeetCode  
**Tags**: SQL, JOIN, GROUP BY, Filtering, Aggregation  

---

## 🧾 Problem Description

### Table: `Products`

| Column Name      | Type    |
|------------------|---------|
| product_id       | int     |
| product_name     | varchar |
| product_category | varchar |

- `product_id` is the **primary key**.
- This table stores information about the products available in the company's catalog.

---

### Table: `Orders`

| Column Name   | Type |
|---------------|------|
| product_id    | int  |
| order_date    | date |
| unit          | int  |

- There may be **duplicate rows**.
- `product_id` is a foreign key referencing `Products.product_id`.
- Each row indicates that a certain number of units were ordered for a product on a specific date.

---

## 🎯 Objective

Write an SQL query to **find the names of products** that had **at least 100 total units ordered in February 2020**, and also return the **total units** ordered for those products.

- Return the result table with the following columns:
  - `product_name`
  - `unit`
- The order of the output rows does **not matter**.

---

## ✅ Example

### Input

**Products**

| product_id | product_name          | product_category |
|------------|-----------------------|------------------|
| 1          | Leetcode Solutions    | Book             |
| 2          | Jewels of Stringology | Book             |
| 3          | HP                    | Laptop           |
| 4          | Lenovo                | Laptop           |
| 5          | Leetcode Kit          | T-shirt          |

**Orders**

| product_id | order_date | unit |
|------------|------------|------|
| 1          | 2020-02-05 | 60   |
| 1          | 2020-02-10 | 70   |
| 2          | 2020-01-18 | 30   |
| 2          | 2020-02-11 | 80   |
| 3          | 2020-02-17 | 2    |
| 3          | 2020-02-24 | 3    |
| 4          | 2020-03-01 | 20   |
| 4          | 2020-03-04 | 30   |
| 4          | 2020-03-04 | 60   |
| 5          | 2020-02-25 | 50   |
| 5          | 2020-02-27 | 50   |
| 5          | 2020-03-01 | 50   |

### Output

| product_name       | unit |
|--------------------|------|
| Leetcode Solutions | 130  |
| Leetcode Kit       | 100  |

---

## 🔍 Explanation

- `Leetcode Solutions` (product_id = 1) → 60 + 70 = 130 ✅
- `Jewels of Stringology` (id = 2) → 80 ❌
- `HP` (id = 3) → 2 + 3 = 5 ❌
- `Lenovo` (id = 4) → all orders in March ❌
- `Leetcode Kit` (id = 5) → 50 + 50 = 100 ✅
