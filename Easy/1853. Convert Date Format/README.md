# LeetCode 1853. Convert Date Format

## Problem Statement

Given a table `Days` with the following schema:

| Column Name | Type |
|-------------|------|
| day         | date |

- `day` contains unique values for this table.

Write a SQL query to convert each date in `Days` into a string formatted as:
where:
- `day_name` is the full name of the day (e.g., "Monday"),
- `month_name` is the full name of the month (e.g., "April"),
- `day` is the numeric day of the month (no leading zero),
- `year` is the 4-digit year.

Return the result table in **any order**.

---

## Example

### Input

**Days table:**

| day        |
|------------|
| 2022-04-12 |
| 2021-08-09 |
| 2020-06-26 |

### Output

| day                     |
|-------------------------|
| Tuesday, April 12, 2022 |
| Monday, August 9, 2021  |
| Friday, June 26, 2020   |

**Note:** Output is case-sensitive.

---