# LeetCode 3415. Find Products with Three Consecutive Digits

## 📌 Problem Statement
You are given a table `Products` containing product IDs and names.

### **Table: Products**
| Column Name | Type    | Description |
|-------------|---------|-------------|
| product_id  | int     | Unique identifier for each product |
| name        | varchar | Name of the product |

`product_id` is the **primary key**.

---

## 🎯 Goal
Find all products whose `name` contains a sequence of **exactly three consecutive digits** in a row.

**Rules:**
- The sequence must be **exactly 3 digits** (e.g., `123`, `003`, `789`).
- Ignore products with no such sequence.
- If the name contains multiple sequences, it still qualifies.
- Return the result ordered by `product_id` in ascending order.

---

## 💡 Example
### **Input**
| product_id | name               |
|------------|--------------------|
| 1          | ABC123XYZ          |
| 2          | A12B34C            |
| 3          | Product56789       |
| 4          | NoDigitsHere       |
| 5          | 789Product         |
| 6          | Item003Description |
| 7          | Product12X34       |

### **Output**
| product_id | name               |
|------------|--------------------|
| 1          | ABC123XYZ          |
| 5          | 789Product         |
| 6          | Item003Description |

---
