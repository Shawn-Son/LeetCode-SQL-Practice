# 1070. Product Sales Analysis III

**Difficulty**: Medium  
**Topics**: SQL, Filtering, Aggregation, Grouping  

---

## 🧠 Problem Summary

You are given a `Sales` table that logs product sales over multiple years. Each sale is associated with:
- A product ID
- The year of the sale
- Quantity sold
- Unit price

A product may have multiple sale records across different years, and even within the same year.

The goal is to find **all sale records for each product in the first year** that product was sold.

---

## 📘 Table Structure

### `Sales`

| Column Name | Type | Description                                |
|-------------|------|--------------------------------------------|
| `sale_id`   | int  | Unique ID for each sale (primary key with `year`) |
| `product_id`| int  | Foreign key referencing the product         |
| `year`      | int  | The year of the sale                        |
| `quantity`  | int  | Number of units sold                        |
| `price`     | int  | Per-unit price of the product               |

- A product may appear multiple times (in different years or same year).
- `(sale_id, year)` is the primary key.

---

## ✅ Objective

Return a table with all sale entries (rows) that occurred in the **first year** each product was sold.

### Output Table Columns

| Column Name  | Description                       |
|--------------|-----------------------------------|
| `product_id` | ID of the product                 |
| `first_year` | Earliest year the product was sold |
| `quantity`   | Quantity sold in that sale         |
| `price`      | Per-unit price for that sale       |

---

## 🧾 Example

### Input

#### `Sales` Table

| sale_id | product_id | year | quantity | price |
|---------|------------|------|----------|-------|
| 1       | 100        | 2008 | 10       | 5000  |
| 2       | 100        | 2009 | 12       | 5000  |
| 7       | 200        | 2011 | 15       | 9000  |

### Output

| product_id | first_year | quantity | price |
|------------|------------|----------|-------|
| 100        | 2008       | 10       | 5000  |
| 200        | 2011       | 15       | 9000  |

---