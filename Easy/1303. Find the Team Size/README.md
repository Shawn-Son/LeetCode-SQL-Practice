# 1303. Find the Team Size

## Problem Description

You are given a table `Employee` containing employee IDs and their respective team IDs.

Your task is to **find the team size for each employee** (i.e., for every employee, report how many employees are on the same team as them, including themselves).

Return the result table with the following columns:
- `employee_id`
- `team_size`

Return the result in any order.

---

## Example

**Input**

Employee table:

| employee_id | team_id |
|-------------|---------|
|     1       |    8    |
|     2       |    8    |
|     3       |    8    |
|     4       |    7    |
|     5       |    9    |
|     6       |    9    |

**Output**

| employee_id | team_size |
|-------------|-----------|
|     1       |     3     |
|     2       |     3     |
|     3       |     3     |
|     4       |     1     |
|     5       |     2     |
|     6       |     2     |

---

### Explanation

- Employees 1, 2, and 3 are part of team 8, so their team size is 3.
- Employee 4 is the only member of team 7, so their team size is 1.
- Employees 5 and 6 are part of team 9, so their team size is 2.

---