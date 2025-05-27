# 1174. Immediate Food Delivery II

**Difficulty**: Medium  
**Topics**: SQL, Aggregation, Filtering, Window Functions  

---

## 🧠 Problem Summary

You're given a `Delivery` table that logs food delivery orders. Each row contains a customer’s order date and their preferred delivery date.

- If the `customer_pref_delivery_date` is **the same as** the `order_date`, it's considered an **immediate** delivery.
- Otherwise, it's a **scheduled** delivery.
- Each customer has **exactly one first order**, defined as the order with the **earliest order_date**.

---

## 📘 Table Structure

### `Delivery`

| Column Name                  | Type | Description                                    |
|-----------------------------|------|------------------------------------------------|
| `delivery_id`               | int  | Unique identifier for each delivery            |
| `customer_id`               | int  | Identifier for the customer                    |
| `order_date`                | date | The date when the order was placed             |
| `customer_pref_delivery_date` | date | The customer's preferred delivery date         |

- Primary key: `delivery_id`
- Each customer has at least one order.
- Each customer has exactly one **first order**.

---

## ✅ Objective

Calculate the **percentage** of customers whose **first order** was delivered **immediately** (i.e., order date equals preferred delivery date).  
Return the result rounded to 2 decimal places.

---

## 🧾 Example

### Input

#### `Delivery` Table

| delivery_id | customer_id | order_date | customer_pref_delivery_date |
|-------------|-------------|------------|------------------------------|
| 1           | 1           | 2019-08-01 | 2019-08-02                   |
| 2           | 2           | 2019-08-02 | 2019-08-02                   |
| 3           | 1           | 2019-08-11 | 2019-08-12                   |
| 4           | 3           | 2019-08-24 | 2019-08-24                   |
| 5           | 3           | 2019-08-21 | 2019-08-22                   |
| 6           | 2           | 2019-08-11 | 2019-08-13                   |
| 7           | 4           | 2019-08-09 | 2019-08-09                   |

### Output

| immediate_percentage |
|----------------------|
| 50.00                |

### Explanation

- **Customer 1**: first order (id 1) → scheduled  
- **Customer 2**: first order (id 2) → immediate ✅  
- **Customer 3**: first order (id 5) → scheduled  
- **Customer 4**: first order (id 7) → immediate ✅  

2 out of 4 customers made immediate first orders → **50.00%**

---
