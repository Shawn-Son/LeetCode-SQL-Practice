# 1251. Average Selling Price

**Category**: Easy  
**Platform**: LeetCode  
**Tags**: SQL, JOIN, Aggregation, Date Range, COALESCE, ROUND

---

## 🧾 Problem Description

### Table: `Prices`

| Column Name   | Type |
|---------------|------|
| product_id    | int  |
| start_date    | date |
| end_date      | date |
| price         | int  |

- `(product_id, start_date, end_date)` is the **primary key**.
- Each row indicates the **price** of a product during a time period.
- Time periods **do not overlap** for the same product.

---

### Table: `UnitsSold`

| Column Name   | Type |
|---------------|------|
| product_id    | int  |
| purchase_date | date |
| units         | int  |

- Each row records the number of units sold for a product on a given day.
- This table **may contain duplicates**.

---

## 🎯 Objective

Calculate the **average selling price** for each product.

- The average selling price is defined as:  
  > **Total Sales Revenue** ÷ **Total Units Sold**

- A sale is counted **only if the `purchase_date` falls within the product's price validity period** (`start_date ≤ purchase_date ≤ end_date`).

- Round the `average_price` to **2 decimal places**.

- If a product does **not have any sales**, return `0.00` as its average price.

---

## ✅ Output

Return a table with:

| Column Name    | Type   |
|----------------|--------|
| product_id     | int    |
| average_price  | float  |

The result can be returned in any order.

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
|------------|----------------|-------|
| 1          | 2019-02-25     | 100   |
| 1          | 2019-03-01     | 15    |
| 2          | 2019-02-10     | 200   |
| 2          | 2019-03-22     | 30    |

### Output

| product_id | average_price |
|------------|----------------|
| 1          | 6.96           |
| 2          | 16.96          |

---

## 🧠 Explanation

- For product 1:
  - 100 units sold at $5 (on 2019-02-25)
  - 15 units sold at $20 (on 2019-03-01)
  - Total = (100×5 + 15×20) ÷ 115 = 6.96

- For product 2:
  - 200 units sold at $15 (on 2019-02-10)
  - 30 units sold at $30 (on 2019-03-22)
  - Total = (200×15 + 30×30) ÷ 230 = 16.96

---

## 🛠️ Notes

- Use `JOIN` to associate each sale with its valid price period.
- Apply `BETWEEN start_date AND end_date` to match date ranges.
- Use `SUM(price × units) / SUM(units)` for average price.
- Use `ROUND(..., 2)` and handle division by zero with `COALESCE`.