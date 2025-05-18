"""# 1280. Students and Examinations

**Category**: Easy  
**Platform**: LeetCode  
**Tags**: SQL, JOIN, COUNT, LEFT JOIN, Aggregation

---

## 🧾 Problem Description

### Table: `Students`

| Column Name   | Type    |
|---------------|---------|
| student_id    | int     |
| student_name  | varchar |

- `student_id` is the **primary key**.
- Each row represents a student enrolled in the school.

### Table: `Subjects`

| Column Name  | Type    |
|--------------|---------|
| subject_name | varchar |

- `subject_name` is the **primary key**.
- Each row represents a subject offered by the school.

### Table: `Examinations`

| Column Name  | Type    |
|--------------|---------|
| student_id   | int     |
| subject_name | varchar |

- This table **does not** have a primary key.
- It may contain **duplicate rows**.
- Each row represents that a student attended an exam for a specific subject.

---

## 🎯 Objective

Write a SQL query to find the **number of times** each student attended each exam (subject).

### Requirements:
- Show **all students** and **all subjects** combinations.
- Even if a student never attended an exam for a subject, the result should include that combination with `attended_exams = 0`.
- Return the result ordered by `student_id` and `subject_name`.

### Output Table Format

| student_id | student_name | subject_name | attended_exams |
|------------|---------------|---------------|----------------|

---

## 📆 Example

### Input:

**Students**:
| student_id | student_name |
|------------|--------------|
| 1          | Alice        |
| 2          | Bob          |
| 13         | John         |
| 6          | Alex         |

**Subjects**:
| subject_name |
|--------------|
| Math         |
| Physics      |
| Programming  |

**Examinations**:
| student_id | subject_name |
|------------|--------------|
| 1          | Math         |
| 1          | Physics      |
| 1          | Programming  |
| 2          | Programming  |
| 1          | Physics      |
| 1          | Math         |
| 13         | Math         |
| 13         | Programming  |
| 13         | Physics      |
| 2          | Math         |
| 1          | Math         |

### Output:

| student_id | student_name | subject_name | attended_exams |
|------------|--------------|--------------|----------------|
| 1          | Alice        | Math         | 3              |
| 1          | Alice        | Physics      | 2              |
| 1          | Alice        | Programming  | 1              |
| 2          | Bob          | Math         | 1              |
| 2          | Bob          | Physics      | 0              |
| 2          | Bob          | Programming  | 1              |
| 6          | Alex         | Math         | 0              |
| 6          | Alex         | Physics      | 0              |
| 6          | Alex         | Programming  | 0              |
| 13         | John         | Math         | 1              |
| 13         | John         | Physics      | 1              |
| 13         | John         | Programming  | 1              |

---

## 🧠 Explanation

- We need a **Cartesian product** of `Students` and `Subjects` to get all combinations.
- Then we **LEFT JOIN** with `Examinations` to count how many times each student attended each subject.
- Even when there are **no matching rows**, the result should show `0`.
