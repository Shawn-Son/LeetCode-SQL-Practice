# 595. Big Countries

**Category**: Easy  
**Platform**: LeetCode  
**Tags**: SQL, Filtering, WHERE clause, Comparison

---

## 🧾 Problem Description

Table: World

| Column Name | Type    |
|-------------|---------|
| name        | varchar |
| continent   | varchar |
| area        | int     |
| population  | int     |
| gdp         | bigint  |

- `name` is the **Primary Key**.
- Each row contains information about a country: its name, continent, area (in km²), population, and GDP.

---

## 🎯 Goal

Return the **name**, **population**, and **area** of countries that are considered **big**.

A country is considered **big** if:
- its **area** is at least **3,000,000** km², or  
- its **population** is at least **25,000,000** people.

Return the result table in **any order**.


## 🔍 Explanation
- We apply a WHERE clause to filter rows based on two conditions:
- Either area >= 3000000
- Or population >= 25000000
- The selected columns are: name, population, and area.
- GDP and continent are ignored since they’re not part of the output requirement.