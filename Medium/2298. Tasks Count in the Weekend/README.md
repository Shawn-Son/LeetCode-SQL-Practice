# LeetCode 2298. Tasks Count in the Weekend

## Problem Statement

Given the following table:

### Tasks

| Column Name | Type |
|-------------|------|
| task_id     | int  |
| assignee_id | int  |
| submit_date | date |

- `task_id` is the primary key.
- Each row contains the ID of a task, the ID of the assignee, and the submission date.

---

## Task

Write a SQL query to report:

1. The number of tasks submitted during the **weekend** (Saturday, Sunday) as `weekend_cnt`.
2. The number of tasks submitted during the **working days** (Monday–Friday) as `working_cnt`.

Return the result table in **any order**.

---

## Example

### Input

| task_id | assignee_id | submit_date |
|---------|-------------|-------------|
| 1       | 1           | 2022-06-13  |
| 2       | 6           | 2022-06-14  |
| 3       | 6           | 2022-06-15  |
| 4       | 3           | 2022-06-18  |
| 5       | 5           | 2022-06-19  |
| 6       | 7           | 2022-06-19  |

### Output

| weekend_cnt | working_cnt |
|-------------|-------------|
| 3           | 3           |

---
