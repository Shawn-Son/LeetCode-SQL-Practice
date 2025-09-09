# 2082. The Number of Rich Customers

## 📘 Problem

You are given a table **Store**:

| Column Name | Type |
|-------------|------|
| bill_id     | int  |
| customer_id | int  |
| amount      | int  |

- `bill_id` is the primary key.  
- Each row represents one bill and its associated customer.  

---

## ✅ Task

Report the **number of customers** who had **at least one bill with amount > 500**.  

Return the result in the following format:

| rich_count |
|------------|
| value      |

---

## 🔎 Example

### Input
**Store**
| bill_id | customer_id | amount |
+———+———––+––––+
| 6       | 1           | 549    |
| 8       | 1           | 834    |
| 4       | 2           | 394    |
| 11      | 3           | 657    |
| 13      | 3           | 257    |
+———+———––+––––+
### Output
+————+
| rich_count |
+————+
| 2          |
+————+