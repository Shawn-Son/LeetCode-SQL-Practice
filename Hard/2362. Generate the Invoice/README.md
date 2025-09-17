# 2362. Generate the Invoice

## 📘 Problem

You are given two tables:

### `Products`
| Column Name | Type |
|-------------|------|
| product_id  | int  |
| price       | int  |

- `product_id` is unique.  
- Each row stores the unit price of a product.

### `Purchases`
| Column Name | Type |
|-------------|------|
| invoice_id  | int  |
| product_id  | int  |
| quantity    | int  |

- `(invoice_id, product_id)` is the primary key.  
- Each row stores the quantity of a product in a specific invoice.

**Task:**  
Return the **details (line items)** of the invoice with the **highest total price**.  
If multiple invoices tie for the highest total, return the one with the **smallest `invoice_id`**.  
Output columns: `product_id`, `quantity`, `price` where `price = quantity * unit_price`.  
Return rows in any order.

---

## 🔎 Example

**Input**

`Products`
+————+—––+
| product_id | price |
+————+—––+
| 1          | 100   |
| 2          | 200   |
+————+—––+
`Purchases`
+————+————+–––––+
| invoice_id | product_id | quantity |
+————+————+–––––+
| 1          | 1          | 2        |
| 3          | 2          | 1        |
| 2          | 2          | 3        |
| 2          | 1          | 4        |
| 4          | 1          | 10       |
+————+————+–––––+
**Output**
+————+–––––+—––+
| product_id | quantity | price |
+————+–––––+—––+
| 2          | 3        | 600   |
| 1          | 4        | 400   |
+————+–––––+—––+
Explanation:
- Invoice 2 total = 4×100 + 3×200 = 1000  
- Invoice 4 total = 10×100 = 1000  
- Highest total is 1000; tie → pick smaller `invoice_id` = 2.  
- Return its line items with line totals.