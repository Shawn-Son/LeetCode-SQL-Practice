# LeetCode 175. Combine Two Tables

## Problem Statement

We are given two tables:

### Person

| Column Name | Type    |
|-------------|---------|
| personId    | int     |
| lastName    | varchar |
| firstName   | varchar |

- `personId` is the primary key (unique).
- Each row contains the ID, last name, and first name of a person.

### Address

| Column Name | Type    |
|-------------|---------|
| addressId   | int     |
| personId    | int     |
| city        | varchar |
| state       | varchar |

- `addressId` is the primary key (unique).
- Each row contains the city and state of a person with a matching `personId` from the `Person` table.

---

## Task

Write a SQL query to **report the first name, last name, city, and state of each person in the Person table**.  
If a person’s address does not exist in the `Address` table, return `NULL` for city and state.

Return the result table in any order.

---

## Example

### Input

**Person table:**

| personId | lastName | firstName |
|----------|----------|-----------|
| 1        | Wang     | Allen     |
| 2        | Alice    | Bob       |

**Address table:**

| addressId | personId | city          | state      |
|-----------|----------|---------------|------------|
| 1         | 2        | New York City | New York   |
| 2         | 3        | Leetcode      | California |

### Output

| firstName | lastName | city          | state    |
|-----------|----------|---------------|----------|
| Allen     | Wang     | NULL          | NULL     |
| Bob       | Alice    | New York City | New York |

### Explanation

- `personId = 1` (Allen Wang) does not have an address → return `NULL` for city and state.
- `personId = 2` (Bob Alice) has an address in New York City, New York.

