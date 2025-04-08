# 1757. Recyclable and Low Fat Products

**Category**: Easy  
**Platform**: LeetCode  
**Tags**: SQL, Filtering, WHERE clause, ENUM

## 🧾 Problem Description

Table: Products

| Column Name | Type  |
|-------------|--------|
| product_id  | int    |
| low_fats    | enum('Y', 'N') |
| recyclable  | enum('Y', 'N') |

- product_id is the **Primary Key**.
- low_fats: 'Y' if low fat, 'N' otherwise.
- recyclable: 'Y' if recyclable, 'N' otherwise.

## 🔍 Explanation
•	We use the WHERE clause to filter rows.
•	Both low_fats and recyclable columns must be 'Y'.
•	Returns only the product_id column as required.