# SQL Problem – Cities Above National Average Price

## Problem Statement

We are given a table `Listings` with the following structure:

| Column Name | Type    |
|-------------|---------|
| city        | varchar |
| price       | int     |

- Each row represents a listing in a given city with its associated price.  
- We want to identify **cities where the average price of listings is higher than the national average**.  

The **national average** is defined as the average price of all listings in the dataset.  

---

## Task

Write a PostgreSQL query to return the list of cities where the **average listing price** is strictly greater than the national average price.  
The result should be ordered by `city` in ascending order.

---

## Example

### Input (Listings table):

| city        | price |
|-------------|-------|
| New York    | 300   |
| New York    | 400   |
| Boston      | 150   |
| Boston      | 200   |
| Chicago     | 500   |

### Output:

| city     |
|----------|
| Chicago  |
| New York |

### Explanation:
- **National average** = (300 + 400 + 150 + 200 + 500) / 5 = 310.  
- City averages:
  - New York: (300 + 400) / 2 = 350 → Above national average ✅
  - Boston: (150 + 200) / 2 = 175 → Below national average ❌
  - Chicago: 500 → Above national average ✅  

---