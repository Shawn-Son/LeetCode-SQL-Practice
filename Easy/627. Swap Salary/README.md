# LeetCode 627. Swap Salary

## Problem Statement

Given the following table:

### Salary

| Column Name | Type     |
|-------------|----------|
| id          | int      |
| name        | varchar  |
| sex         | ENUM     |  -- 'm' or 'f'
| salary      | int      |

- `id` is the primary key.
- The `sex` column contains only 'm' or 'f' values.

---

## Task

Write a SQL solution to **swap all 'f' and 'm' values** in the `sex` column  
(i.e., change all 'f' values to 'm' and all 'm' values to 'f')  
using **a single UPDATE statement** and **no intermediate temporary tables**.

> **Do not write any SELECT statement for this problem.**

---

## Example

### Input

| id | name | sex | salary |
|----|------|-----|--------|
| 1  | A    | m   | 2500   |
| 2  | B    | f   | 1500   |
| 3  | C    | m   | 5500   |
| 4  | D    | f   | 500    |

### Output

| id | name | sex | salary |
|----|------|-----|--------|
| 1  | A    | f   | 2500   |
| 2  | B    | m   | 1500   |
| 3  | C    | f   | 5500   |
| 4  | D    | m   | 500    |
