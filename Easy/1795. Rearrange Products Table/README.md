# LeetCode 1795. Rearrange Products Table

## Problem Description

Given a `Products` table where each row contains the prices of a product in three different stores (`store1`, `store2`, `store3`), write an SQL or Pandas solution to **rearrange the table** such that each row contains:

- `product_id`
- `store`
- `price`

If a product is not available in a store (price is `NULL`), that row should be excluded from the result.

You may return the result table in any order.

### Example

**Input**

| product_id | store1 | store2 | store3 |
|------------|--------|--------|--------|
| 0          | 95     | 100    | 105    |
| 1          | 70     | null   | 80     |

**Output**

| product_id | store  | price |
|------------|--------|-------|
| 0          | store1 | 95    |
| 0          | store2 | 100   |
| 0          | store3 | 105   |
| 1          | store1 | 70    |
| 1          | store3 | 80    |

---

## Approach

This problem is about **unpivoting** a wide table into a long format.  
For each store column in the original table, we create a row only if its price is not NULL.