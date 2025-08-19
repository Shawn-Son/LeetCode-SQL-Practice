# LeetCode 1173. Immediate Food Delivery I

## Problem Statement

Given the following table:

### Delivery

| Column Name                 | Type |
|-----------------------------|------|
| delivery_id                 | int  |
| customer_id                 | int  |
| order_date                  | date |
| customer_pref_delivery_date | date |

- `delivery_id` is the primary key (unique value) of this table.  
- The table stores information about food delivery orders, including when the order was placed and the customer’s preferred delivery date.  

**Definitions:**
- An order is **immediate** if `customer_pref_delivery_date = order_date`.  
- Otherwise, the order is **scheduled**.  

---

## Task

Write a SQL query to find the **percentage of immediate orders** in the table, rounded to **2 decimal places**.

Return the result with the column named `immediate_percentage`.

---

## Example

### Input

**Delivery table:**

| delivery_id | customer_id | order_date | customer_pref_delivery_date |
|-------------|-------------|------------|-----------------------------|
| 1           | 1           | 2019-08-01 | 2019-08-02                  |
| 2           | 5           | 2019-08-02 | 2019-08-02                  |
| 3           | 1           | 2019-08-11 | 2019-08-11                  |
| 4           | 3           | 2019-08-24 | 2019-08-26                  |
| 5           | 4           | 2019-08-21 | 2019-08-22                  |
| 6           | 2           | 2019-08-11 | 2019-08-13                  |

### Output

| immediate_percentage |
|-----------------------|
| 33.33                |

---

## Explanation

- Orders with **delivery_id 2** and **3** are immediate because their `order_date = customer_pref_delivery_date`.  
- The remaining orders are scheduled.  
- There are 6 total orders, 2 of which are immediate.  

\[
\text{Percentage} = \frac{2}{6} \times 100 = 33.33
\]