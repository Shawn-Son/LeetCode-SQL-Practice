# LeetCode 2026. Low-Quality Problems

## Problem Statement

Given a table `Problems` with the following schema:

| Column Name | Type |
|-------------|------|
| problem_id  | int  |
| likes       | int  |
| dislikes    | int  |

- `problem_id` is the primary key for this table.
- Each row indicates the number of likes and dislikes for a LeetCode problem.

A LeetCode problem is considered **low-quality** if its like percentage is **strictly less than 60%**:
like_percentage = likes / (likes + dislikes)
Write a SQL query to find the IDs of all low-quality problems, ordered by `problem_id` in ascending order.

---

## Example

### Input

| problem_id | likes | dislikes |
|------------|-------|----------|
| 6          | 1290  | 425      |
| 11         | 2677  | 8659     |
| 1          | 4446  | 2760     |
| 7          | 8569  | 6086     |
| 13         | 2050  | 4164     |
| 10         | 9002  | 7446     |

### Output

| problem_id |
|------------|
| 7          |
| 10         |
| 11         |
| 13         |

---