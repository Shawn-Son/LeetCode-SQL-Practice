# 1821. Find Customers With Positive Revenue this Year

## Problem Description

You are given a DataFrame named `Customers` with the following columns:
- `customer_id` (int): The customer’s unique identifier.
- `year` (int): The year of the revenue record.
- `revenue` (int): The customer’s revenue in that year (can be negative).

Write a solution to report the IDs of customers who had **positive revenue in the year 2021**.

Return the result as a DataFrame with a single column: `customer_id`. The order does not matter.

---

## Example

**Input DataFrame:**

| customer_id | year | revenue |
|-------------|------|---------|
| 1           | 2018 | 50      |
| 1           | 2021 | 30      |
| 1           | 2020 | 70      |
| 2           | 2021 | -50     |
| 3           | 2018 | 10      |
| 3           | 2016 | 50      |
| 4           | 2021 | 20      |

**Output DataFrame:**

| customer_id |
|-------------|
| 1           |
| 4           |

**Explanation:**
- Customer 1: Revenue = 30 in 2021 (positive)
- Customer 2: Revenue = -50 in 2021 (not positive)
- Customer 3: No record for 2021
- Customer 4: Revenue = 20 in 2021 (positive)

---