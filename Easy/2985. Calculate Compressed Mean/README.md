# 2985. Calculate Compressed Mean

## Problem Description

You are given a DataFrame named `Orders` with the following columns:
- `order_id` (int): Unique order identifier
- `item_count` (int): Number of items in each order
- `order_occurrences` (int): Number of times this exact order occurred

Write a solution to calculate the **average number of items per order**, rounded to two decimal places.

Return the result as a single-row DataFrame with the column `average_items_per_order`.

---

## Example

**Input DataFrame:**

| order_id | item_count | order_occurrences |
|----------|------------|-------------------|
| 10       | 1          | 500               |
| 11       | 2          | 1000              |
| 12       | 3          | 800               |
| 13       | 4          | 1000              |

**Output DataFrame:**

| average_items_per_order |
|------------------------|
| 2.70                   |

**Explanation:**
- Total items: (1 × 500) + (2 × 1000) + (3 × 800) + (4 × 1000) = 8900
- Total orders: 500 + 1000 + 800 + 1000 = 3300
- Average: 8900 / 3300 = 2.70

---