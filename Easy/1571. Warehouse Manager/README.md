# 1571. Warehouse Manager

## Problem Description

You are given two DataFrames:

### `Warehouse`
- `name` (string): Name of the warehouse
- `product_id` (int): Product identifier
- `units` (int): Number of units of the product stored in the warehouse

### `Products`
- `product_id` (int): Product identifier (unique)
- `product_name` (string): Name of the product
- `Width` (int): Width of the product (in feet)
- `Length` (int): Length of the product (in feet)
- `Height` (int): Height of the product (in feet)

Each row in `Warehouse` links a warehouse to the products it stores and the number of units stored. Each row in `Products` contains the product's dimensions.

Write a solution to **report the total cubic feet of volume occupied by the inventory in each warehouse**.

Return the result as a DataFrame with columns:
- `warehouse_name`
- `volume`

Return the result table in any order.

---

## Example

**Input DataFrames:**

**Warehouse:**

| name      | product_id | units |
|-----------|------------|-------|
| LCHouse1  | 1          | 1     |
| LCHouse1  | 2          | 10    |
| LCHouse1  | 3          | 5     |
| LCHouse2  | 1          | 2     |
| LCHouse2  | 2          | 2     |
| LCHouse3  | 4          | 1     |

**Products:**

| product_id | product_name | Width | Length | Height |
|------------|--------------|-------|--------|--------|
| 1          | LC-TV        | 5     | 50     | 40     |
| 2          | LC-KeyChain  | 5     | 5      | 5      |
| 3          | LC-Phone     | 2     | 10     | 10     |
| 4          | LC-T-Shirt   | 4     | 10     | 20     |

**Output DataFrame:**

| warehouse_name | volume |
|----------------|--------|
| LCHouse1       | 12250  |
| LCHouse2       | 20250  |
| LCHouse3       | 800    |

**Explanation:**
- LC-TV (product 1): 5 x 50 x 40 = 10,000 (volume per unit)
- LC-KeyChain (product 2): 5 x 5 x 5 = 125 (volume per unit)
- LC-Phone (product 3): 2 x 10 x 10 = 200 (volume per unit)
- LC-T-Shirt (product 4): 4 x 10 x 20 = 800 (volume per unit)

LCHouse1:  
- 1 x 10,000 (LC-TV) + 10 x 125 (LC-KeyChain) + 5 x 200 (LC-Phone) = 12,250

LCHouse2:  
- 2 x 10,000 (LC-TV) + 2 x 125 (LC-KeyChain) = 20,250

LCHouse3:  
- 1 x 800 (LC-T-Shirt) = 800

---