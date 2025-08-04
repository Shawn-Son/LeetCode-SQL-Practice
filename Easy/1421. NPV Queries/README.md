# LeetCode 1421. NPV Queries

## Problem Statement

Given the following tables:

### NPV

| Column Name | Type |
|-------------|------|
| id          | int  |
| year        | int  |
| npv         | int  |

- `(id, year)` is the primary key for this table.
- Contains the Net Present Value (`npv`) for each inventory identified by `id` and `year`.

### Queries

| Column Name | Type |
|-------------|------|
| id          | int  |
| year        | int  |

- `(id, year)` is the primary key for this table.
- Contains the queries for specific inventory and year pairs.

---

## Task

Write a SQL query to find the **npv of each query** in the Queries table.

- If a query `(id, year)` is **not present** in the NPV table, treat its `npv` as **0**.
- Return the result table in any order.

---

## Example

### Input

**NPV**

| id | year | npv  |
|----|------|------|
| 1  | 2018 | 100  |
| 7  | 2020 | 30   |
| 13 | 2019 | 40   |
| 1  | 2019 | 113  |
| 2  | 2008 | 121  |
| 3  | 2009 | 12   |
| 11 | 2020 | 99   |
| 7  | 2019 | 0    |

**Queries**

| id | year |
|----|------|
| 1  | 2019 |
| 2  | 2008 |
| 3  | 2009 |
| 7  | 2018 |
| 7  | 2019 |
| 7  | 2020 |
| 13 | 2019 |

### Output

| id | year | npv  |
|----|------|------|
| 1  | 2019 | 113  |
| 2  | 2008 | 121  |
| 3  | 2009 | 12   |
| 7  | 2018 | 0    |
| 7  | 2019 | 0    |
| 7  | 2020 | 30   |
| 13 | 2019 | 40   |

---