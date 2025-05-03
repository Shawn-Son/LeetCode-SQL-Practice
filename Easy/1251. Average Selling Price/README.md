# 1251. Average Selling Price

**Category**: Easy  
**Platform**: LeetCode  
**Tags**: SQL, Join, Aggregation, Date Filtering

---

## 🧾 Problem Description

### Table: `Prices`

| Column Name   | Type    |
|---------------|---------|
| product_id    | int     |
| start_date    | date    |
| end_date      | date    |
| price         | int     |

- `(product_id, start_date, end_date)` is the **primary key**.
- Each row represents the price of a product within a specific date range.
- There are no overlapping periods for the same product.

---

### Table: `UnitsSold`

| Column Name   | Type    |
|---------------|---------|
| product_id    | int     |
| purchase_date | date    |
| units         | int     |

- This table may contain duplicate rows.
- Each row records how many units of a product were sold on a specific date.

---

## 🎯 Objective

Write a solution to calculate the **average selling price** for each product.

- The **average selling price** is defined as:  
  `total revenue / total units sold`
- Revenue for a sale is: `price * units`
- If a product has **no sales**, its average price should be `0`.
- Round the result to **2 decimal places**.
- Return the result in **any order**.

---

## ✅ Example

### Input

**Prices**

| product_id | start_date | end_date   | price |
|------------|------------|------------|-------|
| 1          | 2019-02-17 | 2019-02-28 | 5     |
| 1          | 2019-03-01 | 2019-03-22 | 20    |
| 2          | 2019-02-01 | 2019-02-20 | 15    |
| 2          | 2019-02-21 | 2019-03-31 | 30    |

**UnitsSold**

| product_id | purchase_date | units |
|------------|----------------|--------|
| 1          | 2019-02-25     | 100    |
| 1          | 2019-03-01     | 15     |
| 2          | 2019-02-10     | 200    |
| 2          | 2019-03-22     | 30     |

---

### Output

| product_id | average_price |
|------------|----------------|
| 1          | 6.96           |
| 2          | 16.96          |

---

## 🧠 Explanation

- **Product 1**:
  - 2019-02-25: 100 units × $5 = 500
  - 2019-03-01: 15 units × $20 = 300
  - Total Revenue: 800, Total Units: 115
  - Average = 800 / 115 = 6.95652 → **6.96**

- **Product 2**:
  - 2019-02-10: 200 × $15 = 3000
  - 2019-03-22: 30 × $30 = 900
  - Total Revenue: 3900, Total Units: 230
  - Average = 3900 / 230 = 16.95652 → **16.96**

---