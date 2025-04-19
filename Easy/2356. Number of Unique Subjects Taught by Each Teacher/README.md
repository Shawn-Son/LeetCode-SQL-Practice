# 2356. Number of Unique Subjects Taught by Each Teacher

**Category**: Easy  
**Platform**: LeetCode  
**Tags**: SQL, Aggregation, GROUP BY, DISTINCT

---

## 🧾 Problem Description

### Table: `Teacher`

| Column Name | Type |
|-------------|------|
| teacher_id  | int  |
| subject_id  | int  |
| dept_id     | int  |

- `(subject_id, dept_id)` is the **primary key** — meaning the same subject can be taught in different departments.
- Each row indicates that `teacher_id` teaches `subject_id` in `dept_id`.

---

## 🎯 Objective

Write a query to calculate the number of **unique subjects** each teacher teaches, regardless of department.

- Return a table with columns: `teacher_id` and `cnt` (the count of unique subjects).
- Result can be returned in any order.

---

## ✅ Example

### Input:

**Teacher**

| teacher_id | subject_id | dept_id |
|------------|------------|---------|
| 1          | 2          | 3       |
| 1          | 2          | 4       |
| 1          | 3          | 3       |
| 2          | 1          | 1       |
| 2          | 2          | 1       |
| 2          | 3          | 1       |
| 2          | 4          | 1       |

---

### Output:

| teacher_id | cnt |
|------------|-----|
| 1          | 2   |
| 2          | 4   |

---

## 🔍 Explanation

- Teacher 1 teaches:
  - Subject 2 in **two departments** (counts as **1 unique subject**)
  - Subject 3 in department 3  
  → Total = 2 unique subjects

- Teacher 2 teaches 4 different subjects in one department  
  → Total = 4 unique subjects
