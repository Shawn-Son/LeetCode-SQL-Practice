# 1479. Sales by Day of the Week

## 📘 Problem

You are given two tables:

### Table: Orders
| Column Name | Type   |
|-------------|--------|
| order_id    | int    |
| customer_id | int    |
| order_date  | date   |
| item_id     | varchar|
| quantity    | int    |

- `(order_id, item_id)` is the primary key.
- Contains info about orders and quantities on a given date.

### Table: Items
| Column Name   | Type   |
|---------------|--------|
| item_id       | varchar|
| item_name     | varchar|
| item_category | varchar|

- `item_id` is the primary key.
- Contains info about item names and categories.

---

## ✅ Task

Report how many units in each category have been ordered on each day of the week (Monday–Sunday).  
Return the result table ordered by category.

---

## 🔎 Example

### Input

**Orders**
+————+–––––––+———––+–––––+–––––+
| order_id   | customer_id  | order_date  | item_id  | quantity |
+————+–––––––+———––+–––––+–––––+
| 1          | 1            | 2020-06-01  | 1        | 10       |
| 2          | 1            | 2020-06-08  | 2        | 10       |
| 3          | 2            | 2020-06-02  | 1        | 5        |
| 4          | 3            | 2020-06-03  | 3        | 5        |
| 5          | 4            | 2020-06-04  | 4        | 1        |
| 6          | 4            | 2020-06-05  | 5        | 5        |
| 7          | 5            | 2020-06-05  | 1        | 10       |
| 8          | 5            | 2020-06-14  | 4        | 5        |
| 9          | 5            | 2020-06-21  | 3        | 5        |
+————+–––––––+———––+–––––+–––––+

**Items**
+—––+––––––––+———––+
| id    | item_name      | category    |
+—––+––––––––+———––+
| 1     | LC Alg. Book   | Book        |
| 2     | LC DB. Book    | Book        |
| 3     | LC Smartphone  | Phone       |
| 4     | LC Phone 2020  | Phone       |
| 5     | LC SmartGlass  | Glasses     |
| 6     | LC T-Shirt XL  | T-Shirt     |
+—––+––––––––+———––+

### Output

+———–+––––+––––+———–+–––––+––––+–––––+––––+
| Category  | Monday |Tuesday | Wednesday| Thursday | Friday | Saturday | Sunday |
+———–+––––+––––+———–+–––––+––––+–––––+––––+
| Book      | 20     | 5      | 0         | 0        | 10     | 0        | 0      |
| Glasses  | 0       | 0      | 0         | 0        | 5      | 0        | 0      |
| Phone    | 0       | 0      | 5         | 1        | 0      | 0        | 10     |
| T-Shirt  | 0       | 0      | 0         | 0        | 0      | 0        | 0      |
+———–+––––+––––+———–+–––––+––––+–––––+––––+