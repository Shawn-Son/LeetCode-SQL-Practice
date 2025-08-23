# LeetCode 2377. Sort the Olympic Table

## Problem Statement

You are given the following table:

### Olympic

| Column Name   | Type    |
|---------------|---------|
| country       | varchar |
| gold_medals   | int     |
| silver_medals | int     |
| bronze_medals | int     |

- `country` is the primary key.
- Each row shows a country’s name and the number of **gold, silver, and bronze medals** it won in the Olympic games.

---

## Task

Write a SQL query to **sort the Olympic table** using the following rules:

1. The country with **more gold medals** comes first.
2. If there is a tie in gold medals, the country with **more silver medals** comes first.
3. If there is a tie in silver medals, the country with **more bronze medals** comes first.
4. If there is still a tie, sort by `country` in **ascending lexicographical order**.

Return the result table in the sorted order.

---

## Example

### Input

**Olympic table:**

| country     | gold_medals | silver_medals | bronze_medals |
|-------------|-------------|---------------|---------------|
| China       | 10          | 10            | 20            |
| South Sudan | 0           | 0             | 1             |
| USA         | 10          | 10            | 20            |
| Israel      | 2           | 2             | 3             |
| Egypt       | 2           | 2             | 2             |

### Output

| country     | gold_medals | silver_medals | bronze_medals |
|-------------|-------------|---------------|---------------|
| China       | 10          | 10            | 20            |
| USA         | 10          | 10            | 20            |
| Israel      | 2           | 2             | 3             |
| Egypt       | 2           | 2             | 2             |
| South Sudan | 0           | 0             | 1             |

---