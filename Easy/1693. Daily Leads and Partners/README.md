# LeetCode 1693. Daily Leads and Partners

## Problem Description

Given a table `DailySales` that records the sales data for each product make, lead, and partner on each date, write a query to return, for each combination of `date_id` and `make_name`:
- the number of **distinct lead_id** values (`unique_leads`)
- the number of **distinct partner_id** values (`unique_partners`)

Return the result table in any order.

---

## Example

### Input

| date_id   | make_name | lead_id | partner_id |
|-----------|-----------|---------|------------|
| 2020-12-8 | toyota    | 0       | 1          |
| 2020-12-8 | toyota    | 1       | 0          |
| 2020-12-8 | toyota    | 1       | 2          |
| 2020-12-7 | toyota    | 0       | 2          |
| 2020-12-7 | toyota    | 0       | 1          |
| 2020-12-8 | honda     | 1       | 2          |
| 2020-12-8 | honda     | 2       | 1          |
| 2020-12-7 | honda     | 0       | 1          |
| 2020-12-7 | honda     | 1       | 2          |
| 2020-12-7 | honda     | 2       | 1          |

### Output

| date_id   | make_name | unique_leads | unique_partners |
|-----------|-----------|--------------|-----------------|
| 2020-12-8 | toyota    | 2            | 3               |
| 2020-12-7 | toyota    | 1            | 2               |
| 2020-12-8 | honda     | 2            | 2               |
| 2020-12-7 | honda     | 3            | 2               |

---