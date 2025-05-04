# 1661. Average Time of Process per Machine

**Category**: Easy  
**Platform**: LeetCode  
**Tags**: SQL, Aggregation, Join, Enum Handling

---

## 🧾 Problem Description

### Table: `Activity`

| Column Name    | Type    |
|----------------|---------|
| machine_id     | int     |
| process_id     | int     |
| activity_type  | enum    | ('start', 'end')
| timestamp      | float   |

- `(machine_id, process_id, activity_type)` is the **primary key**.
- Each row records either the **start** or **end** of a process on a specific machine.
- The `timestamp` represents the time (in seconds) of the activity.
- For each `(machine_id, process_id)` pair:
  - There is exactly **one 'start' and one 'end'**
  - `'start'` timestamp is always **less than** `'end'` timestamp

---

## 🎯 Objective

Write a SQL query to calculate the **average time each machine takes to complete a process**.

- Completion time of a process = `end timestamp - start timestamp`
- Average time = total completion time / number of processes for that machine
- Round the result to **3 decimal places**

Return a result table with:

| machine_id | processing_time |
|------------|-----------------|

Result order does not matter.

---

## ✅ Example

### Input

**Activity**

| machine_id | process_id | activity_type | timestamp |
|------------|------------|----------------|-----------|
| 0          | 0          | start          | 0.712     |
| 0          | 0          | end            | 1.520     |
| 0          | 1          | start          | 3.140     |
| 0          | 1          | end            | 4.120     |
| 1          | 0          | start          | 0.550     |
| 1          | 0          | end            | 1.550     |
| 1          | 1          | start          | 0.430     |
| 1          | 1          | end            | 1.420     |
| 2          | 0          | start          | 4.100     |
| 2          | 0          | end            | 4.512     |
| 2          | 1          | start          | 2.500     |
| 2          | 1          | end            | 5.000     |

### Output

| machine_id | processing_time |
|------------|-----------------|
| 0          | 0.894           |
| 1          | 0.995           |
| 2          | 1.456           |

---

## 🧠 Explanation

- **Machine 0**:
  - Process 0: 1.520 - 0.712 = 0.808
  - Process 1: 4.120 - 3.140 = 0.980
  - Average = (0.808 + 0.980) / 2 = **0.894**
- **Machine 1**:
  - (1.550 - 0.550 + 1.420 - 0.430) / 2 = **0.995**
- **Machine 2**:
  - (4.512 - 4.100 + 5.000 - 2.500) / 2 = **1.456**

---