# LeetCode 1741. Find Total Time Spent by Each Employee

## Problem Description

Given a table `Employees` with employee entry and exit records, calculate the **total time (in minutes)** each employee spent in the office on each day.

**Table: Employees**

| Column Name | Type | Description                                         |
|-------------|------|-----------------------------------------------------|
| emp_id      | int  | Employee ID                                         |
| event_day   | date | Day of the event (YYYY-MM-DD)                       |
| in_time     | int  | Entry time in minutes (from 1 to 1440)              |
| out_time    | int  | Exit time in minutes (from 1 to 1440)               |

- The **primary key** is (emp_id, event_day, in_time).
- Each employee can have **multiple entries** and exits on the same day.
- For each entry, `out_time > in_time`.

---

## Example

**Input**

| emp_id | event_day  | in_time | out_time |
|--------|------------|---------|----------|
| 1      | 2020-11-28 | 4       | 32       |
| 1      | 2020-11-28 | 55      | 200      |
| 1      | 2020-12-03 | 1       | 42       |
| 2      | 2020-11-28 | 3       | 33       |
| 2      | 2020-12-09 | 47      | 74       |

**Output**

| day        | emp_id | total_time |
|------------|--------|------------|
| 2020-11-28 | 1      | 173        |
| 2020-11-28 | 2      | 30         |
| 2020-12-03 | 1      | 41         |
| 2020-12-09 | 2      | 27         |

**Explanation:**
- Employee 1 on 2020-11-28: (32 - 4) + (200 - 55) = 28 + 145 = **173**
- Employee 1 on 2020-12-03: (42 - 1) = **41**
- Employee 2 on 2020-11-28: (33 - 3) = **30**
- Employee 2 on 2020-12-09: (74 - 47) = **27**
